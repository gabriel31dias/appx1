class RegisterController < ActionController::Base

    def index

    end

    def create
      @user = User.new register_params
      respond_to do |format|
        if @user.save
          format.html { redirect_to :login, notice: "User was successfully created." }
        else
          format.html { render :index, notice: :unprocessable_entity }
        end
      end
    end
   
    def list
        rsa = Cryptosystem::RSA.new
         xxx = rsa.encrypt('secret')
        render :json => xxx
    end
    private
    
    def set_register
      @post = User.find(params[:id])
    end

    def register_params
      params.require(:user).permit(:name, :password, :email)
    end

end
