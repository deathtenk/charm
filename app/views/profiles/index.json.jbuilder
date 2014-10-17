json.array!(@profiles) do |profile|
  json.extract! profile, :id, :title, :description, :linkedin_url, :facebook_url, :twitter_url, :github_url, :bitbucket_url
  json.url profile_url(profile, format: :json)
end
