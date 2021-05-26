class ChangeUsers2 < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.index :username, unique: true
    end
  end
end
