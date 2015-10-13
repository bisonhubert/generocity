class CreateDonationCenters < ActiveRecord::Migration
  def change
    create_table :donation_centers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_number
      t.string :website
      t.string :district

      t.timestamps null: false
    end
  end
end
