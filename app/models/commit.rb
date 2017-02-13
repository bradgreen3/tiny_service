class Commit < ApplicationRecord
  attr_reader :commit_id, :commit_message, :author, :timestamp

  def initialize(params)
    @commit_id = params["commits"][0]["id"][0..6]
    @commit_message = params["commits"][0]["message"]
    @author = params["commits"][0]["author"]["name"]
    @timestamp = params["commits"][0]["timestamp"]
  end

end
