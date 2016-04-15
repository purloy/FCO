json.array!(@mclusters) do |mcluster|
  json.extract! mcluster, :id, :cluster_name, :feature, :members
  json.url mcluster_url(mcluster, format: :json)
end
