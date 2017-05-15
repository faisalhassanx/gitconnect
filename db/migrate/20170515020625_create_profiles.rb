class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string  :first_name
      t.string  :last_name
      t.string  :job_title
      t.string  :company
      t.string  :phone_number
      t.string  :contact_email
      t.string  :about
      
      t.timestamps
    end
  end
end
