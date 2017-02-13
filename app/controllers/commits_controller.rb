class CommitsController < ApplicationController

  def create
    @commit = Commit.new(params)
  end

  def index
    @commits = Commit.all
  end


end
