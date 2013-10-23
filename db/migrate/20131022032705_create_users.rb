class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.string :country
      t.string :email
      t.string :religion
      t.string :password_digest

      t.timestamps
    end
  end
end
