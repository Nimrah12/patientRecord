module PatientAgeCalculator
    extend self
  
    def calculate_age(dateofbirth)
      return nil unless dateofbirth.present?
  
      dob = dateofbirth.to_date
      current_date = Time.zone.today
  
      age = current_date.year - dob.year - (dob.to_date.change(year: current_date.year) > current_date ? 1 : 0)
      age.positive? ? age : nil
    end
  end