class RegenerateSecretMessagesTable < ActiveRecord::Migration
  def self.up
    create_table :secret_messages, :force =>true do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :secret_messages
  end
end
