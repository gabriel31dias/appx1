class AutentificationService
      
  def initialize(session)
    @session = session
  end

  def call
    checkauth
  end

  def checkauth
    getcurrensession = @session[:current_user]
    return false if getcurrensession == nil
  end


end
