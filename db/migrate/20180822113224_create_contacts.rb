class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :facebook
      t.string :fname
      t.string :lname
      t.string :notes
      t.string :phone
      t.string :url
    end
  end
end
