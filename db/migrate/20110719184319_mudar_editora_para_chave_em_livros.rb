class MudarEditoraParaChaveEmLivros < ActiveRecord::Migration
  def self.up
    change_table :livros do |t|
      t.remove :editora
      t.references :editora
    end
  end

  def self.down
    change_table :livros do |t|
      t.remove :editora_id
      t.string :editora
    end
  end
end

