json.array!(@memberships) do |membership|
  json.extract! membership, :id, :user_id, :date_applied, :date_voted, :date_paid, :date_begin, :date_end, :voted, :area_id
  json.url membership_url(membership, format: :json)
end
