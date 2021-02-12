class Artist
    attr_reader :name

    @@all = Array.new

    def initialize(input)
        p "[initialize [Artist] class with name [#{input}]"
        @name = input
        p "adding [#{input}] to [Artist]'s @@all array."
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        p "[songs]"
        p "[#{self.name}]'s songs are:"
        songs = Song.all.find_all{|song| song.artist.name == self.name}
        songs.each{|x| p x.name; sleep 1}
        songs
    end

    def new_song(input1, input2)
        p "[new_song]"
        p "creating new song for artist [#{self.name}] via new_song"
        Song.new(input1, self, input2)
    end

    def genres
        p "[genres]"
        p "[#{self.name}]'s genres are:"
        genres = songs.select{|song| song.genre}.map{|x| x.genre}
        genres.each{|x| p x.label}
        genres
    end
end
