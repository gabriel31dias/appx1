class LoginController < ActionController::Base
  layout 'authentification.html.erb'
  def index;end

  def login
    @setlogin = UserSessionService.new(login_params, session).call
      respond_to do |format|
        if @setlogin == true
          format.html { redirect_to :home, notice: "Logado com sucesso" }
        else
          format.html { render :index, notice: "Um erro ocorreu ao fazer login" }
        end
      end
  end

  def logout
     UserSessionService.new({}, session).logout
     redirect_to :login
  end

  private    
  def login_params
    params.require(:user).permit(:password, :email)
  end

end
