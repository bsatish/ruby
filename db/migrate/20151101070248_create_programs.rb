class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :program_name
      t.text :program_description
      t.string :address
      t.decimal :address_longitude
      t.decimal :address_latitude
      t.string :phone_number
      t.string :phone_number_alt
      t.string :enrollment_contact_name
      t.string :enrollment_contact_email
      t.string :website_url
      t.integer :min_age
      t.integer :max_age
      t.string :building_open_time
      t.string :building_close_time
      t.string :program_start_time
      t.string :program_end_time
      t.boolean :class_hs_diploma
      t.boolean :class_job_training
      t.boolean :class_english_language
      t.boolean :class_barbering
      t.boolean :class_cosmetology
      t.boolean :class_childcare
      t.boolean :class_medical
      t.boolean :class_culinary
      t.boolean :class_computer
      t.boolean :class_hvac
      t.boolean :class_construction
      t.boolean :rec_online_courses
      t.boolean :rec_credit_recovery
      t.boolean :rec_spanish_instruction
      t.boolean :rec_case_management
      t.boolean :rec_career_placement
      t.boolean :rec_postsec_placement
      t.boolean :rec_meals
      t.text :rec_program_notes
      t.boolean :credential_ged
      t.boolean :credential_nedp
      t.boolean :credential_hs_diploma
      t.boolean :credential_servsafe
      t.boolean :credential_ic3
      t.string :metro
      t.string :bus
      t.boolean :req_dc_resident
      t.boolean :req_drug_test
      t.boolean :req_vaccination
      t.text :req_notes
      t.integer :open_seats
      t.date :application_deadline
      t.date :application_open_date
      t.date :program_start_date
      t.text :enrollment_cycles
      t.string :accepting_applications
      t.timestamps null: false
    end
  end
end
