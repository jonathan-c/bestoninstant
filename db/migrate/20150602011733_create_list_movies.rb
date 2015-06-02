class CreateListMovies < ActiveRecord::Migration
  def change
    create_table :list_movies, :id => false do |t|
      t.integer :list_id
      t.integer :movie_id
    end
  end
end
