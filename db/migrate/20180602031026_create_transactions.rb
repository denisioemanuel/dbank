class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.time :date
      t.float :value
      t.integer :type
      t.references :User, foreign_key: true
      t.references :Account, foreign_key: true

      t.timestamps
    end
  end
end
