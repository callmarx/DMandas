# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    flash.now[:success] = {
      title: "Successfully Sign Up",
      body: "Welcome to our application"
    }
    flash.now[:alert] = {
      title: "Some alert",
      body: "something got wrong!"
    }
    flash.now[:error] = {
      title: "Some error",
      body: "something got wrong!"
    }
    flash.now[:notice] = {
      title: "Some notice",
      body: "something to inform"
    }
  end

  def test
    flash.now[:notice] = {
      title: "Successfully Sign Up",
      body: "Welcome to our application"
    }
  end
end
