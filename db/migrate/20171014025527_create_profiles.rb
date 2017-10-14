class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_names
      t.string :gamer_tag
      t.string :system
      t.string :phone_number
      t.string :contact_email
      t.text :description
      t.timestamps
    end
  end
end
