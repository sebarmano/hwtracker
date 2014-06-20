class LoginsController < ApplicationController

  def create
    if params[:email]
      session[:current_student_id] = Student.find_by(email: params[:email]).id
    end
      redirect_to student_path(session[:current_student_id])
  end

  def destroy
    # do logout
  end

end
