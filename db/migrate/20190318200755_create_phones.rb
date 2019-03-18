class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :name
      t.string :color
      t.string :gigs
      t.integer :year_released

      t.timestamps
    end
  end
end
