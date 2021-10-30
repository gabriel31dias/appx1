class HomeController < ActionController::Base
  layout 'application.html.erb'

  def index
    redirect_to :login if AutentificationService.new(session).call == false
  end
  
end
