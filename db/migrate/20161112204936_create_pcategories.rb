class CreatePcategories < ActiveRecord::Migration
  def change
    create_table :pcategories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
