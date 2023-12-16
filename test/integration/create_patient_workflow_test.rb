# require "test_helper"

# # from Integration Testing, Week 10
# # file: test/integration/create_patient_workflow_test.rb

# # Note: see http://www.railsstatuscodes.com/ for response codes

# class CreatePatientWorkflowTest < ActionDispatch::IntegrationTest


#     test "should create a new patient" do
#         # Visit the new patient form
#         get new_patient_path
#         assert_response :success
    
#         # Create a new patient
#         post patients_path, params: {
#           patient: {
#             firstname: "John",
#             lastname: "Doe",
#             dateofbirth: "1990-01-01",
#             phonenumber: "1234567890",
#             email: "john@example.com",
#             medicalcondition: "Some condition",
#             allergies: "No",
#             payment: "50.00"
#           }
#         }
    
#         # Follow the redirect after successful creation
#         follow_redirect!
#         assert_response :success
    
#         # Check if the new patient is displayed on the index page
#         assert_select "p", text: "FirstName: Jane"
#         assert_select "p", text: "LastName: Doe"
#         assert_select "p", text: "DateOfBirth: 1985-05-05"
#         assert_select "p", text: "PhoneNumber: 9876543210"
#         assert_select "p", text: "Email: jane.smith@example.com"
#         assert_select "p", text: "MedicalCondition: Another condition"
#         assert_select "p", text: "Allergies: true"
#         assert_select "p", text: "Payment: 75.0"
#         # Add similar checks for other attributes
    
#         # Optionally, you can assert that the patient count has increased
#         assert_equal Patient.count, 1
#       end
    
#     test "should show a patient" do
#         # Create a sample patient
#         patient = Patient.create(
#           firstname: "Jane",
#           lastname: "Doe",
#           dateofbirth: "1985-05-05",
#           phonenumber: "9876543210",
#           email: "jane@example.com",
#           medicalcondition: "Another condition",
#           allergies: "Yes",
#           payment: "75.00"
#         )
    
#         # Visit the show page for the created patient
#         get patient_path(patient)
#         assert_response :success
    
#         assert_select "p", text: "firstname: Jane"
#         assert_select "p", text: "lastname: Smith"
#         assert_select "p", text: "dateofbirth: 1985-05-05"
#         assert_select "p", text: "phonenumber: 9876543210"
#         assert_select "p", text: "email: jane.smith@example.com"
#         assert_select "p", text: "medicalcondition: Another condition"
#         assert_select "p", text: "allergies: true"
#         assert_select "p", text: "Payment: 75.0"
#       end
#     end
# #   test "should try to create a new patient that is allergic" do
# #     # can reach the page
# #     get "/patients/new"
# #     assert_response :success

# #     # can create a new entry
# #     post "/patients", params: {patient: {firstname: "Nimrah", lastname:"Memon", dateofbirth: "12/09/2004", phonenumber: "1234567890", email: "nim@gmail.com", medicalcondition: "anxiety", allergies: "flu", payment: "20.00"}}
# #     # puts(response.parsed_body)
# #     assert_response :found
# #     assert_select "a", "redirected"

# #     # test new entry (five in total):
# #     # 4 test entries from test/fixtures/patients.yml + 1 new one added via post
# #     get "/patients"
# #     # puts(response.parsed_body)
# #     assert_response :ok
# #     assert_select "div div", 5    # 4 + 1!
# #     ### assert_select "div div p strong", "Completed" ### check partial
# #     assert_select "div div p", "firstname: Nimrah"
# #     assert_select "div div p strong", "allergies"

# #   end

# #   test "should try to create a new patient that is NOT allergic" do
# #     # can reach the page
# #     get "/patients/new"
# #     assert_response :success

# #     # can create a new entry
# #     post "/patients", params: {patient: {firstname: "Henry", allergies: ""}}
# #     # puts(response.parsed_body)
# #     post "/patients", params: {patient: {firstname: "Henry", allergies: ""}}
# #     follow_redirect!
# #     assert_response :success
# #     assert_select "a", "redirected"

# #     # test new entry (five in total):
# #     # 4 test entries from test/fixtures/patients.yml + 1 new one added via post
# #     get "/patients"
# #     # puts(response.parsed_body)
# #     assert_response :success
# #     assert_select "div div", 5    # N+1 test entries, see test/fixtures/patients.yml
# #     ### assert_select "div div p strong", "In Progress" ### check partial
# #     assert_select "div div p", "firstname: henry"
# #     assert_select "div div p strong", "In allergies"

# #   end

# # end
