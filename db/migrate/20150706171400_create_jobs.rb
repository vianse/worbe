class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :business, index: true
      t.references :user, index: true
      t.string :name
      t.references :tag, index: true
      t.references :area, index: true
      t.string :description
      t.references :country, index: true
      t.references :state, index: true
      t.references :city, index: true
      t.string :day_type
      t.string :type_contract
      t.string :salary
      t.string :date_recruitment
      t.string :number_jobs
      t.string :year_experience
      t.string :minimum_age
      t.string :maximum_age
      t.string :language
      t.string :percentage_language
      t.string :ofimatica
      t.boolean :availability_travel
      t.boolean :change_home
      t.boolean :disability

      t.timestamps
    end
  end
end
