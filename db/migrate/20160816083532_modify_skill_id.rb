class ModifySkillId < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :skill
    add_reference :users, :skill, foreign_key: true
  end
end
