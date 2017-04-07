class WelcomeController < ApplicationController
  def index
    flash[:warning] = "饿了么？"
  end
end
