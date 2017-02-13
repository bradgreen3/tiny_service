class CommitsController < ApplicationController
  # skip_before_action :verify_authenticty_token

  def create
    @commit = Commit.create(commit_id: params["commits"][0]["id"][0..6], commit_message: params["commits"][0]["message"], author: params["commits"][0]["author"]["name"], timestamp: params["commits"][0]["timestamp"])
    render json: @commit.to_json, status: 200
  end

  def index
    @commits = Commit.all
  end


end
