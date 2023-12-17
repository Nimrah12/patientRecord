# frozen_string_literal: true

# test/models/patient_test.rb
require 'test_helper'

class PatientTest < ActiveSupport::TestCase

  test 'should be valid with valid attributes' do
    patient = Patient.new(
      firstname: 'John',
      lastname: 'Brian',
      email: 'john@google.com'
    )
    assert patient.valid?
  end

  test 'should not be valid without a first name' do
    patient = Patient.new(
      lastname: 'Brian',
      email: 'john@google.com'
    )
    assert_not patient.valid?
  end

  test 'should not be valid without a last name' do
    patient = Patient.new(
      firstname: 'John',
      email: 'john@google.com'
    )
    assert_not patient.valid?
  end

  test 'should not be valid without a valid email' do
    patient = Patient.new(
      firstname: 'John',
      lastname: 'Brian',
      email: 'invalid_email'
    )
    assert_not patient.valid?
  end
end
