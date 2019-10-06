class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :sex
      t.date :birthdate
      t.boolean :married
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
