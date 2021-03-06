class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :title
      t.string :description
      t.string :linkedin_url
      t.string :facebook_url
      t.string :twitter_url
      t.string :github_url
      t.string :bitbucket_url

      t.timestamps
    end
  end
end
