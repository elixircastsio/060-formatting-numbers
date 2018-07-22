defmodule TeacherWeb.AlbumView do
  use TeacherWeb, :view

  def cents_to_dollars(price) do
    price / 100 |> Number.Currency.number_to_currency()
  end

  def popularity_as_percent(popularity) do
    Number.Percentage.number_to_percentage(popularity, precision: 0)
  end

  def display_phone_number(phone_number) do
    Number.Phone.number_to_phone(phone_number, area_code: true, delimiter: " ")
  end
end
