class BiggestChange < ActiveRecord::Migration
  def up

drop_table :basic_profiles
    create_table :basic_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :maiden_name
      t.string :formatted_name
      t.string :headline
      t.string :location
      t.string :industry
      t.text :summary
      t.string :specialties
      t.string :picture_url
      t.string :public_profile_url
      t.integer :candidate_id

      t.timestamps
  	end

   	drop_table :full_profiles
    create_table :full_profiles do |t|
      t.string :associations
      t.string :honors
      t.string :interests
      t.integer :candidate_id

      t.timestamps
    end

    
  	drop_table :linkedin_oauth_settings
    create_table :linkedin_oauth_settings do |t|
      t.string :atoken
      t.string :asecret
      t.integer :candidate_id

      t.timestamps
    end


  end

  def down
  end
end
