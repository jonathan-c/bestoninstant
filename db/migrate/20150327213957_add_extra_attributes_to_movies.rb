class AddExtraAttributesToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :length, :integer
    add_column :movies, :plot_summary, :text
    add_column :movies, :trailer_url, :string
    add_column :movies, :rating, :float
  end
end
