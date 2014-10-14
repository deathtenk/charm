class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :portfolio, index: true
      t.string :icon_url
      t.string :name
      t.text :description
      t.string :github_url

      t.timestamps
    end
  end
end
