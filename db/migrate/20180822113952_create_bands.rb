class CreateBands < ActiveRecord::Migration[5.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :url
      t.string :notes
    end
  end
end
