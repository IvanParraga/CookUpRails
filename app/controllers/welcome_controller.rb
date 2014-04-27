class WelcomeController < ApplicationController
  def index
    @cooks = Cook.all
  end
end
