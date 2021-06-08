class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :category
      t.string :platform
      t.string :title
      t.string :url
      t.integer :course_length

      t.timestamps
    end
  end
end
