class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :business_phone
      t.string :business_type
      t.string :name
      t.string :owner
      t.string :start_date

      t.timestamps null: false


    end
  end
end
