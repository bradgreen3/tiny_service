class CreateCommits < ActiveRecord::Migration[5.0]
  def change
    create_table :commits do |t|
      t.string :commit_id
      t.string :commit_message
      t.string :author
      t.string :timestamp

      t.timestamps
    end
  end
end
