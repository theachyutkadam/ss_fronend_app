class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.string :status

      t.timestamps
    end
  end
end
