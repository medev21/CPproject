json.array!(@piers) do |pier|
  json.extract! pier, :id, :fullname, :year, :course, :professor, :rate
  json.url pier_url(pier, format: :json)
end
