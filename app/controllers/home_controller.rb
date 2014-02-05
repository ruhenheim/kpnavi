class HomeController < ApplicationController
  def index
    @users = User.all
    # TODO
    # cource select, client select.
    #
    # コントローラ名とモデル名は一致する設計が望ましい＝リソース（原則）

  end
end
