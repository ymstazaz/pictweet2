class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    # sanitizerは清潔にするもの。データを安全に処理し、不正なデータを取り除く。＝フィルタリング
  end
end
