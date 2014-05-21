class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
		  t.string :visualprog
		  t.string :spm
		  t.string :unixnetwork
		  t.string :middleware
		  t.string :xmlweb
		  t.string :vplab
		  t.string :unixlab
		  t.float :gpa
		  t.float :cgpa
		  t.integer :tot_credits
		  t.integer :tot_egrades
		  t.float :percentage
      	t.timestamps
    end
  end
end
