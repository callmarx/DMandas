class WelcomeController < ApplicationController
  def index; end

  def test
    flash.now[:notice] = {
      title: "Successfully Sign Up",
      body: "Welcome to our application"
    }
  end
end
