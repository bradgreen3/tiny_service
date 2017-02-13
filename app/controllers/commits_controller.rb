class CommitsController < ApplicationController
  skip_before_action :verify_authenticty_token

  def create
    @commit = Commit.new(params)
    render json: @commit
  end

  def index
    @commits = Commit.all
  end


end
