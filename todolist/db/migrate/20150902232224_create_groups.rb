class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name

      t.timestamps null: false
    end
    add_reference :tasks, :group, index: true, foreign_key: true
  end
end
