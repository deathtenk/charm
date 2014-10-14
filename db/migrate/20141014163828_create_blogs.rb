class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.references :author, index: true

      t.timestamps
    end
  end
end
