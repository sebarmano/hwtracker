class LoginsController < ApplicationController

  def create
    if params[:email]
      session[:current_student_id] = Student.find_by email: params[:email]
      redirect_to student_path
    end

end
