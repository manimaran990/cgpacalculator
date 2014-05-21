class UsersheetsController < ApplicationController
	   def index
	   end

	   def new
			 @usersheets = Usersheet.new
	   end

	   def create
			 @usersheets = Usersheet.new(usersheet_params)
				    @usersheets.name = current_user.name
			 	    @usersheets.user_id = current_user.id
				    @usersheets.subject1grade.upcase!
				    @usersheets.subject2grade.upcase!
				    @usersheets.subject3grade.upcase!
				    @usersheets.subject4grade.upcase!
				    @usersheets.subject5grade.upcase!
				    @usersheets.subject6grade.upcase!
				    @usersheets.subject7grade.upcase!

					grade_hash = {"S"=>10,"A"=>9,"B"=>8,"C"=>7,"D"=>6,"E"=>5,"U"=>0} 
					
					@tot_egrades =0

					@tot_credits = @usersheets.subject1credit + @usersheets.subject2credit + @usersheets.subject3credit + @usersheets.subject4credit + @usersheets.subject5credit + @usersheets.subject6credit + @usersheets.subject7credit

				    @sum = (grade_hash[@usersheets.subject1grade]*@usersheets.subject1credit + grade_hash[@usersheets.subject2grade]*@usersheets.subject2credit + grade_hash[@usersheets.subject3grade]*@usersheets.subject3credit + grade_hash[@usersheets.subject4grade]*@usersheets.subject4credit + grade_hash[@usersheets.subject5grade]*@usersheets.subject5credit + grade_hash[@usersheets.subject6grade]*@usersheets.subject6credit + grade_hash[@usersheets.subject7grade]*@usersheets.subject7credit).to_f
        		   
					@gpa = @sum/@tot_credits
				
				    @usersheets.gpa = @gpa
				    @usersheets.cgpa = @gpa
				    @usersheets.tot_credits = @tot_credits
					
					
					@usersheets.tot_egrades = grade_hash[@usersheets.subject1grade]+grade_hash[@usersheets.subject2grade]+grade_hash[@usersheets.subject4grade]+grade_hash[@usersheets.subject4grade]+grade_hash[@usersheets.subject5grade]+grade_hash[@usersheets.subject6grade]+grade_hash[@usersheets.subject7grade]  

					@usersheets.percentage = (@gpa*10)-7.5


				    @usersheets.save
				    redirect_to user_path(current_user)
	   end

	   def show
			 @usersheets = Usersheet.find(params[:id])
	   end

	   def destroy
			 @usersheets = Usersheet.find(params[:id])
			 @usersheets.destroy

			 redirect_to user_path(current_user)
	   end

	   def usersheet_params
			 params.require(:usersheet).permit(:semester, :rollnumber, :subject1code, :subject1name, :subject1credit, :subject1grade, :subject2code, :subject2name, :subject2credit, :subject2grade,:subject3code, :subject3name, :subject3credit, :subject3grade,:subject4code, :subject4name, :subject4credit, :subject4grade,:subject5code, :subject5name, :subject5credit, :subject5grade,:subject6code, :subject6name, :subject6credit, :subject6grade,:subject7code, :subject7name, :subject7credit, :subject7grade)
	   end

end
