class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
		t.string :title
		t.text :body
		t.timestamps null: false
    	t.string :author
    	t.text :paragraph
    	t.text :test
    end
  end
end
