class RemoveListsMoviesTable < ActiveRecord::Migration
  def up
    drop_table :lists_movies
  end

  def down
    create_table :lists_movies, :id => false do |t|
      t.integer :list_id
      t.integer :movie_id
    end
  end
end
