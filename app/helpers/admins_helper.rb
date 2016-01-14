module AdminsHelper
  def log_in(admin)
    session[:username] = admin.username
  end
end
