class CreateEditoras < ActiveRecord::Migration
  def self.up
    create_table :editoras do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :editoras
  end
end
