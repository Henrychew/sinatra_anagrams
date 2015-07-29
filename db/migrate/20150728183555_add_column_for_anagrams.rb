class AddColumnForAnagrams < ActiveRecord::Migration
  def change
  	add_column :words, :anagram, :string
  	add_index :words, :anagram
	end
end
