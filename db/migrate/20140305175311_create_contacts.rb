class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :picture
      t.string :picture_file_name
      t.string :picture_content_type
      t.string :picture_file_size
      t.string :picture_updated_at

      t.timestamps
    end
  end



end
