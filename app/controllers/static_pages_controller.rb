class StaticPagesController < ApplicationController
  def home
    @user = User.first
  end

  def about
  end
end
