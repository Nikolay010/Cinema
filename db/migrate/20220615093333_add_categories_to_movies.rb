class AddCategoriesToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :categories, :integer, default: 10, null: false
  end
end
