class UnitTestsController < ApplicationController
   def index
   end

   def new
   	@students = Student.all
   	@tests = Test.all
   	@unit_test = UnitTest.new
   end

   def create
   	 @test = Test.find_by(subject: "#{params["unit_test"]["test_id"]}")
     student = []
     student_count= 0
     while student_count < Student.all.count
       @student = Student.find_by(id: params["student_id_#{student_count+1}"])
       UnitTest.create!(test_id: @test.id, student_id: @student.id, mark: "#{params["unit_test"].values[student_count+1]}")
      student_count = student_count + 1
     end 
     redirect_to root_path
   end

   def index
    @tests = Test.all

   end


  private 
   def permit_params
       params.require(:unit_test).permit(:mark_1,:mark_2,:mark_3,:test_id)
   end

end
