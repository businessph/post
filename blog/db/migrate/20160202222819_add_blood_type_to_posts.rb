class AddBloodTypeToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :blood_type, :string
  	add_column :posts, :carrier, :string
  end
end


###rails g migration AddBloodTypeToPosts

#add this to the new migration file
#class AddBloodTypeToPosts < ActiveRecord::Migration
#  def change
#  	add_column :posts, :blood_type, :string
#  end
#end


###info http://edgeguides.rubyonrails.org/active_record_migrations.html#changing-columns
#If the migration name is of the form "AddXXXToYYY" or "RemoveXXXFromYYY" and is followed by a list of column names and types then a migration containing the appropriate add_column and remove_column statements will be created.
#
#$ bin/rails generate migration AddPartNumberToProducts part_number:string
#will generate

#class AddPartNumberToProducts < ActiveRecord::Migration[5.0]
 # def change
 #   add_column :products, :part_number, :string
  #end
#end