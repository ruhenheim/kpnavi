class UsersController < ApplicationController
  # 他人の情報を編集できるのは、実践的にはない＝
  # この辺は、限定可操作を実装する
  # role = cancan で？ user/3=admin? #>false
  # TODO: current_user プロファイル表示系に変更してみる

  before_filter :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]

  def index
    # TODO all.order 指定
    @users = User.all
  end

  def show
  end

  # GET /users/1/edit
  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        # TODO: custume i18n_field(:updated)
        format.html { redirect_to @user, notice: 'success updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :kana, :sex, :birth_of_date, :insurance_no, :zipcode, :prefecture_code, :address, :tel)
  end
end
