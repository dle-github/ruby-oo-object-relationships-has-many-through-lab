class Doctor
    attr_reader :name
    @@all = Array.new

    def initialize(input)
        p "initialize [Doctor] class with name [#{input}]"
        @name = input
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        p "[Doctor.appointments]"
        appts = Appointment.all.find_all{|appts| appts.doctor == self}
        appts
    end

    def new_appointment(input1, input2)
        p "[Doctor.new_appointment]"
        date = input1
        patient = input2
        match = Patient.all.find_all{|patient| patient.name == input2}

        if match = nil
            p "no match found for patient with name [#{patient}]. creating..."; sleep 2
            patient = Patient.new(input2)
        end
        appt = Appointment.new(date, patient, self)
    end

    def patients
        p "[Doctor.patients]"
        patients = appointments.select{|appt| appt.patient}.map{|x| x.patient}
        patients
    end
end
