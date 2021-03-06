class ChangeUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.remove :name, :email
      t.string :username, null: false, unique: true
    end
  end
end
