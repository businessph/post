class AddCellPhoneToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :cell_phone, :string
  end
end
