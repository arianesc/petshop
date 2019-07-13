class CreateEspecies < ActiveRecord::Migration[5.2]
  def change
    create_table :especies do |t|
      t.string :nome
      t.string :cientifico
      t.string :nome
      t.string :popular

      t.timestamps
    end
  end
end
