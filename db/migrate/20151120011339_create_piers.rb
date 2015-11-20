class CreatePiers < ActiveRecord::Migration
  def change
    create_table :piers do |t|
      t.string :fullname
      t.string :year
      t.string :course
      t.string :professor
      t.integer :rate

      t.timestamps null: false
    end
  end
end
