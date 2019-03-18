@phones.each do |phone|
  json.phone_id phone.id
  json.name phone.name
  json.color phone.color
  json.gigs phone.gigs
  json.year_released phone.year_released
end