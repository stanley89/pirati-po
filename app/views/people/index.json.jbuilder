json.array!(@people) do |person|
  json.extract! person, :id, :nick, :degree, :name, :surname, :degree2, :street, :town, :zip, :birth, :email, :phone, :jabber
  json.url person_url(person, format: :json)
end
