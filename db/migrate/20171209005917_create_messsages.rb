class CreateMesssages < ActiveRecord::Migration[5.1]
  def change
    create_table :messsages do |t|
      t.string :message_text, null: false
      t.timestamps
    end
  end
end
