class AdminsController < ApplicationController

  def login
    @admin = Admin.new
  end

  def check_login
    admin = Admin.find_by username: params[:admin][:username].delete(' ')
    if (admin==nil)
      redirect_to admin_login_path
    else
      if (admin[:password]==params[:admin][:password])
        redirect_to root_path
      else
        flash[:error] = "Invalid credentials"
        redirect_to admin_login_path
      end
    end

  end
end
