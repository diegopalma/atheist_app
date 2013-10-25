class StaticPagesController < ApplicationController
  def home
    @number_of_users = User.all.count
  end

  def resources
  end

  def about
  end

  def contact
  end

  def manifesto
  end

  def signatories
    @users = User.all
    @number_of_users = User.all.count
  end

end
