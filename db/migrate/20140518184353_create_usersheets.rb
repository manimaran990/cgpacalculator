class CreateUsersheets < ActiveRecord::Migration
  def change
    create_table :usersheets do |t|
		  t.integer :semester
		  t.string :name
		  t.string :rollnumber
		  t.string :subject1code
		  t.string :subject1name
		  t.integer :subject1credit
		  t.string :subject1grade
		  t.string :subject2code
		  t.string :subject2name
		  t.integer :subject2credit
		  t.string :subject2grade
		  t.string :subject3code
		  t.string :subject3name
		  t.integer :subject3credit
		  t.string :subject3grade
		  t.string :subject4code
		  t.string :subject4name
		  t.integer :subject4credit
		  t.string :subject4grade
		  t.string :subject5code
		  t.string :subject5name
		  t.integer :subject5credit
 		  t.string :subject5grade
		  t.string :subject6code
		  t.string :subject6name
		  t.integer :subject6credit
 		  t.string :subject6grade
		  t.string :subject7code
		  t.string :subject7name
		  t.integer :subject7credit
		  t.string :subject7grade
		  t.float  :gpa
		  t.float :cgpa
		  t.integer :tot_credits
		  t.integer :tot_egrades
		  t.float :percentage
		  t.references :user
    end
  end
end
