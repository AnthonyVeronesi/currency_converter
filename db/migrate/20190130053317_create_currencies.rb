class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.string :short_name
      t.string :long_name
      t.float :base_exchange_to_usd

      t.timestamps
    end
  end
end
