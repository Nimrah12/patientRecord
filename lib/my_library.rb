module MyLibrary
    class PatientSearch
      def self.search_by_lastname_and_dob(lastname, dateofbirth)
        # Implement your search logic here
        # For example, assuming you have a Patient model:
        Patient.where(lastname: lastname, dateofbirth: dateofbirth)
      end
    end
  end