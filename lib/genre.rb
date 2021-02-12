class Genre
    attr_reader :label

    @@all = Array.new

    def initialize(input)
        matches = @@all.find{|x| x = input}
        # if matches != nil
        #     p "[#{input}] already exists"
        #     matches
        # end

        p "[initialize [Genre] class with label [#{input}]"
        @label = input
        p "adding [#{input}] to [Genre]'s @@all array."
        @@all << self
    end

    def name
        p "[name]"
        @label
    end

    def songs
        p "[songs]"
        p "[#{self.name}]'s songs are:"
        songs = Song.all.find_all{|song| song.genre.label == self.label}
        songs.each{|x| p x.name}
        songs
    end   

    def artists
        artists = songs.select{|song| song.artist}.map{|x| x.artist}
        artists.each{|x| p x.name}
        artists
    end

    def self.all
        p "[self.all]"
        @@all
    end
end