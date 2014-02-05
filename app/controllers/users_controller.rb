class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]

  def index
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
        format.html { redirect_to @user, notice: 'success updated.' }#i18n_field(:updated) }
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
