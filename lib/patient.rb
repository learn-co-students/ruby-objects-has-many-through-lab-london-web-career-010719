class Patient
  attr_accessor :name, :appointments, :doctors
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []

    @@all << self
  end

  def new_appointment (doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.map {|appointment| appointment.doctor}
  end

  def self.all
    @@all
  end

end
