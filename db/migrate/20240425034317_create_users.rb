class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.references :created_by_user, null: false, foreign_key: { to_table: :users }
      t.string :name, null: false
      t.string :email, null: false
      t.string :username, null: false
      t.string :password, null: false
      t.string :role, null: false
      t.string :service_level, null: false
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
