class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :picture_url
      t.string :name
      t.string :description
      t.integer :rate_per_day
      t.string :category
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
