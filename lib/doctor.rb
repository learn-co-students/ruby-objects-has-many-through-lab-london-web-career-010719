require_relative 'patient'
require_relative 'appointment'

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

  def new_appointment(patient, date)
  # takes in a an instance of the Patient class and a date,
  # and creates a new Appointment.

  # That Appointment should know that it belongs to the doctor
    Appointment.new(date, patient, self)
  end

  def appointments
  # finds appointments belonging to this doctor.
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    # iterates over that doctor's Appointments
    # collects the patient that belongs to each Appointments.
    appointments.collect {|appointment| appointment.patient}.uniq
  end

end
