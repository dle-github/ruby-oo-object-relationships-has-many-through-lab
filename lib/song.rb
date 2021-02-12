class Song
    attr_accessor :name, :genre, :artist

    @@all = Array.new
    def initialize(input1, input2, input3)
        matches = @@all.find{|x| x.name == input1}
        if  matches != nil
            p "[#{input1}] already exists"
            @@all.delete(matches)
        end

            p "[initialize [Song] class with name [#{input1}], artist [#{input2}], and genre [#{input3}]"
            @name = input1
            @genre = input3
            @artist = input2
            p "adding [#{input1}] to [Song]'s @@all array."
            @@all << self
    end

    def self.all
        @@all
    end
end
