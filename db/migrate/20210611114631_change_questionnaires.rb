class ChangeQuestionnaires < ActiveRecord::Migration[6.0]
  def change
    remove_column :questionnaires, :when
    add_column :questionnaires, :when, :string, array: true, default: []
    add_column :questionnaires, :days, :string, array: true, default: []
  end
end
