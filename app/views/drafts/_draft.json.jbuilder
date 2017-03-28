json.extract! draft, :id, :venue_name, :venue_address, :venue_ownername, :rejected, :accepted, :created_at, :updated_at
json.url draft_url(draft, format: :json)
