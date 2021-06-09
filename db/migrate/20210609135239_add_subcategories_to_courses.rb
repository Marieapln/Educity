class AddSubcategoriesToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :subcategories, :string, array: true, default: []
  end
end
