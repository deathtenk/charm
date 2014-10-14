class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.references :author, index: true
      t.string :title

      t.timestamps
    end
  end
end
