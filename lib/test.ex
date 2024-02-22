defmodule Test do
  @person """
  {
    "firstName": "Sonoo",
    "lastName": "Jaiswal",
    "age": 27,
    "address": {
        "streetAddress": "Plot-6, Mohan Nagar",
        "city": "Ghaziabad",
        "state": "UP",
        "postalCode": "201007"
    }
  }
  """

  def get_user(type) do
    {:ok, json} = Jason.decode(@person)
    get_user(type, json)
  end

  def get_user(:name, json) do
    %{"firstName" => name, "lastName" => lastName} = json

    "#{name} #{lastName}"
  end

  def get_user(:address, json) do
    %{"address" => %{"streetAddress" => street, "city" => city, "state" => state, "postalCode" => postalCode}} = json

    "#{street} #{city} #{state} #{postalCode}"
  end

  def get_user(:birth, json) do
    %{"age" => age} = json

    current_year = Date.utc_today().year
    Integer.to_string(current_year - age)
  end
end
