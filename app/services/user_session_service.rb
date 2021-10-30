class UserSessionService
    
    def initialize(params, session)
      @params = params
      @session = session
    end

    def call
      @result = checkuser @params[:email], @params[:password]
      newsession
      @result  
    end

    def logout
      @session[:current_user] = nil
    end
      
    private
    def newsession
      @session[:current_user] = @user
    end

    def checkuser(email, password)
      @user = User.where(email: email).first
      return true if @user&.authenticate(password)
      return false
    end
end
  