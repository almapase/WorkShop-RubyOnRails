class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title, default:"Titulo por defecto"
      t.text :description
      t.integer :order, default: 0, null: false

      t.timestamps null: false
    end
  end
end
