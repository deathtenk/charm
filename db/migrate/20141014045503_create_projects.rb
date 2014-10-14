class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :icon_url
      t.string :name
      t.string :description
      t.string :github_url

      t.timestamps
    end
  end
end
