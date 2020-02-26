json.array!(@artifacts) do |artifact|
  json.extract! artifact, :id, :name, :key, :project_id
  json.url artifact_url(artifact, format: :json)
<<<<<<< HEAD
end
=======
end
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
