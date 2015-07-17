class Api::V1::DocumentsController < ApplicationController

  before_action :authenticate_api_v1_user!

  def index
    @docs = Document.all
    if api_v1_user_signed_in?
      render json: {name: 'Hello'}
    else
      render json: {name: 'Hello World'}
    end
  end

end
