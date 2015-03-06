class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:secure_index]
  acts_as_token_authentication_handler_for User, only: [:secure_index]
  def index
  end

  def secure_index
  end
end
