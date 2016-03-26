json.array!(@scans) do |scan|
  json.extract! scan, :id
  json.url scan_url(scan, format: :json)
end
