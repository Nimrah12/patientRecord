# frozen_string_literal: true

class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :lastname
      t.string :dateofbirth
      t.string :phonenumber
      t.string :email
      t.string :medicalcondition
      t.string :allergies
      t.string :payment

      t.timestamps
    end
  end
end
