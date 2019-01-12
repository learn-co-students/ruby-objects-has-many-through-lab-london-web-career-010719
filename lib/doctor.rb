require 'pry'

class Doctor

attr_accessor :name
@@all = []
    def initialize(name)
      @name = name
      @@all << self

    end


    def self.all
      @@all
    end

    def new_appointment(patient,date) #the date and patient are swapped around in rspec so it should be (date,patient) but only accepts (patient,date)
      Appointment.new(date,patient,self)
    end

    def appointments

      Appointment.all.select { |appointment| appointment.doctor == self}

    end

    def patients

      appointments.map do | appointment|
            appointment.patient
      end

    end

end
