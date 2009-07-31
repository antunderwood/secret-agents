class CreateSecretMessages < ActiveRecord::Migration
  def self.up
    create_table :secret_messages do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :secret_messages
  end
end
