class CreateSkis < ActiveRecord::Migration
  def change
    create_table :skis do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
