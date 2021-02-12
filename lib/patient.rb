class Patient
    attr_accessor :name
    @@all = Array.new

    def initialize(input)
        p "initialize [Patient] class with name [#{input}]"
        @name = input
        @@all << self
    end

    def new_appointment(input1, input2)
        p "[Patient.new_appointment]"
        date = input1
        doctor = input2

        match = Doctor.all.find_all{|doctor| doctor.name == input2}
        if match = nil
            p "no match found for doctor with name [#{doctor}]. creating..."; sleep 2
            doctor = Doctor.new(input2)
        end
        appt = Appointment.new(date, self, doctor)
        appt
    end

    def appointments
        p "[Patient.appointments]"
        p "finding appointments for patient [#{self.name}]..."
        appts = Appointment.all.find_all{|appt| appt.patient == self}
        appts
    end

    def doctors
        p "[Patient.doctors]"
        doctors = appointments.select{|appt| appt.doctor}.map{|x| x.doctor}
        p appointments
        p doctors
    end

    def self.all
        @@all
    end

end
