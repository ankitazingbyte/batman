class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
	    t.string :username, null: false, unique: true
      t.string :email, null: false, index: true, unique: true
      t.string :password_digest
      t.string :role, null: false, default: 'user'
      t.datetime :last_login
      t.string :token

      t.timestamps
    end
      add_index :users, :token, unique: true
  end
end
