class AddListIdToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :list_id, :integer
  end
end
