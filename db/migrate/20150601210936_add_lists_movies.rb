class AddListsMovies < ActiveRecord::Migration
  def up
    create_table :lists_movies, :id => false do |t|
      t.integer :list_id
      t.integer :movie_id
    end
  end

  def down
    drop_table :lists_movies
  end
end
