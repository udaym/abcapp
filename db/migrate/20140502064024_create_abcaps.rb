class CreateAbcaps < ActiveRecord::Migration
  def change
    create_table :abcaps do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
