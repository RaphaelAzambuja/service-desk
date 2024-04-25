class CreateCalls < ActiveRecord::Migration[7.1]
  def change
    create_table :calls do |t|
      t.references :opened_by_user, null: false, foreign_key: { to_table: :users }
      t.references :assigned_user, foreign_key: { to_table: :users }
      t.string :priority, null: false
      t.string :status, null: false
      t.string :call_type, null: false
      t.string :service_level, null: false
      t.text :description, null: false
      t.string :contact_number, null: false
      t.text :conclusion_description
      t.integer :rating
      t.text :rating_description

      t.timestamps
    end
  end
end
