class CommitsController < ApplicationController

  def create
    @commit = Commit.new(params)
    render json: @commit
  end

  def index
    @commits = Commit.all
  end


end
