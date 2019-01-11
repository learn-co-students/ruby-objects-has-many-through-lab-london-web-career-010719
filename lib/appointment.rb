class Appointment

@@all = []

attr_accessor :date, :patient, :doctor

  def initialize(date, patient, doctor)
    if patient.is_a?(String)
      patient, date = date, patient
    elsif doctor.is_a?(String)
      doctor, date = date, doctor
    end
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

end
