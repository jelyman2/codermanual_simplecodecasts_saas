class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :location_city
      t.string :location_state
      t.string :job_title
      t.string :job_company
      t.string :phone_number
      t.string :contact_email
      t.string :website
      t.string :social_github
      t.string :social_twitter
      t.string :social_facebook
      t.string :social_linkedin
      t.text :decription
      
      t.timestamps
    end
  end
end
