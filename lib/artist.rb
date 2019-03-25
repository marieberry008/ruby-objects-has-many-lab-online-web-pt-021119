class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    # @@song_count +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    # @@song_count +=1
  end

  # long form of attr_reader :songs
  # def songs
    # @songs 
  # end

  def self.song_count
    @songs
    # @@song_count
  end
end