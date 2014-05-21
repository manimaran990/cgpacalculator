class GradesController < ApplicationController
	   def index
			 @grades = Grade.all
	   end 

	   def new
			 @grade = Grade.new
	   end

	   def about
	   end

	   def create 
			 @grades = Grade.new(
			 visualprog:  params[:grade][:visualprog],
			 spm:  params[:grade][:spm],
			 unixnetwork:  params[:grade][:unixnetwork],
			 middleware: params[:grade][:middleware],
			 xmlweb: params[:grade][:xmlweb],
			 vplab: params[:grade][:vplab],
			 unixlab: params[:grade][:unixlab])
			 grade_hash = {"S"=>10,"A"=>9,"B"=>8,"C"=>7,"D"=>6,"E"=>5,"U"=>0} 
			 @tot_egrades = 0
			 			
			 @sum = (grade_hash[@grades.visualprog]*3+grade_hash[@grades.spm]*3+grade_hash[@grades.unixnetwork]*3+grade_hash[@grades.middleware]*3+grade_hash[@grades.xmlweb]*3+grade_hash[@grades.vplab]*2+grade_hash[@grades.unixlab]*2).to_f
			 @gpa = @sum/19
			 
			 @grades.tot_credits = 19
			 @grades.tot_egrades = grade_hash[@grades.visualprog]+grade_hash[@grades.spm]+grade_hash[@grades.unixnetwork]+grade_hash[@grades.middleware]+grade_hash[@grades.xmlweb]+grade_hash[@grades.vplab]+grade_hash[@grades.unixlab]  
			 @grades.gpa = @gpa
			 @grades.cgpa = @gpa
			 @grades.percentage = (@gpa*10)-7.5
				    
			 @grades.save

			 redirect_to grade_path(@grades)
	   end

	   def show
			 @grades = Grade.find(params[:id])

	   end
end
