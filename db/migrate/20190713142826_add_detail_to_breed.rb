class AddDetailToBreed < ActiveRecord::Migration[5.2]
  def change
    add_column :breeds, :detail, :string
  end
end
