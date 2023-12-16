# UNIT TESTING
require "test_helper"

class PatientsControllerTest < ActionDispatch::IntegrationTest


  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url, as: :json
    assert_response :success
  end

  test "Patients need a name and email" do
     post patients_url, params: { patient: { firstname: "", lastname: "", email: "" } }
       assert_not (200...299).include?(response.code.to_i)   # not ok
    end

  test "should create patient" do
    assert_difference("Patient.count") do
      post patients_url, params: { patient: { allergies: @patient.allergies, dateofbirth: @patient.dateofbirth, email: "new_patient@example.com", firstname: "New", lastname: "Patient", medicalcondition: @patient.medicalcondition, payment: @patient.payment, phonenumber: @patient.phonenumber } }, as: :json
    end
    
    assert_response :created
  end

  test "should show patient" do
    get patient_url(@patient), as: :json
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { allergies: @patient.allergies, dateofbirth: @patient.dateofbirth, firstname: @patient.firstname, lastname: @patient.lastname, medicalcondition: @patient.medicalcondition, payment: @patient.payment, phonenumber: @patient.phonenumber, email: "john@google.com" } }, as: :json
    assert_response :success
  end

  test "should destroy patient" do
    assert_difference("Patient.count", -1) do
      delete patient_url(@patient), as: :json
    end

    
    assert_response :no_content
  end
end
