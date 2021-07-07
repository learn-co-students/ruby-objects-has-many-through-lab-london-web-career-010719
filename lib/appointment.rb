# create new appointment are in reverse order
class Appointment

attr_accessor :date, :patient, :doctor
@@all = []

      def initialize(date, patient ,doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
      end

      def self.all
        @@all
      end

end
