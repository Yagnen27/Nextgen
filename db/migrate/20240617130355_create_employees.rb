class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :department
      t.text :address
      t.integer :salary
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
