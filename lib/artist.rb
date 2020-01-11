class Artist 
    attr_accessor :name
    @@all = []
    def initialize(name)
    @name = name
    
    @@all << self
    end
    def self.all
   @@all
    end
    
    def add_song(song)
    song.artist = self
    end
    
   def songs #list all songs that belong to artist
     Song.all.select { |songs| songs.artist == self}
   
    end
    
    def self.find_or_create_by_name(name)
      artist_grab = self.all.find {|artist| artist.name == name }
     if artist_grab
       artist_grab
  else
    Artist.new(name)
      # self.new(name)
    end
   end
   def print_songs
   songs.each do |song| song.name 
    puts song.name
  end
   
 end
end



 