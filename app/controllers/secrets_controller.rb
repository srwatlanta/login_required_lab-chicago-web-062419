class SecretsController < ApplicationController
  before_action :require_login

  def show
    if current_user != nil
      render :show
    else
      redirect_to login_path
    end
  end

  private

  def require_login
    redirect_to login_path unless session.include? :name
  end
end
