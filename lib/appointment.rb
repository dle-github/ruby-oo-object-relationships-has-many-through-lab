class Appointment
    attr_accessor :date, :patient, :doctor
    @@all = Array.new
    def initialize(input1, input2, input3)
        p "initialize [Appointment] class with date [#{input1}], patient [#{input2.name}], and doctor [#{input3.name}]"
        @date = input1
        @patient = input2
        @doctor = input3

        @@all << self
    end

    def self.all
        @@all
    end

    def patient
        p "[Appointment.patient]"
        @patient
    end

    def doctor
        p "[Appointment.doctor]"
        @doctor
    end
end
