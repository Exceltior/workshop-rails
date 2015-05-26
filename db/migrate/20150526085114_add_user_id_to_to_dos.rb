class AddUserIdToToDos < ActiveRecord::Migration

  def up
    add_column :to_dos, :user_id, :integer

    ToDo.all.each do |t|
      t.destroy! if t.user_id.nil?
    end
  end

  def down
    remove_column :to_dos, :user_id
  end

end
