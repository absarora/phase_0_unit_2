# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself].


# Pseudocode

# Create a class named "Song"
# => create a constructor
# => create an instance method "play" that outputs a string

# Create a class named "Playlist"
# => create a constructor
# => create an instance method "add" that add tracks to the playlist
# => create an instance method "num_of"tracks" that returns the total # of tracks in the playlist
# => create an instance method "play_all" that plays the playlist
# => create an instance method "remove" that removes a track
# => create an instance method "display" that displays all the tracks
# => create an instance method "includes?" that checks to see if the specific track is available


# Initial Solution

class Song
  def initialize(track, artist)
    @track = track
    @artist = artist
  end
  def play
    puts "#{@track} by #{@artist}"
  end
end

class Playlist
  def initialize(*playlist)
    @playlist = playlist
  end
  def add(*tracks)
    tracks.each{|track| @playlist << track}
  end
  def num_of_tracks
    @playlist.count
  end
  def play_all
    @playlist.each(&:play)
  end
  def remove(track)
    @playlist.delete(track)
  end
  def display
    puts @playlist.inspect
  end
  def includes?(track)
    @playlist.include?(track)
  end
end

# Refactored Solution

class Song
  def initialize(track, artist)
    @track = track
    @artist = artist
  end
  def play
    puts "#{@track} by #{@artist}"
  end
  def track
    puts "#{@track} by #{@artist}"
  end
end

class Playlist
  def initialize(*playlist)
    @playlist = playlist
  end
  def add(*tracks)
    tracks.each{|track| @playlist << track}
  end
  def num_of_tracks
    @playlist.count
  end
  def play_all
    puts "\nPlaying all the current tracks:"
    @playlist.each(&:play)
  end
  def remove(track)
    @playlist.delete(track)
  end
  def display
    puts "\nCurrent Playlist:"
    @playlist.each(&:track)
  end
  def includes?(track)
    @playlist.include?(track)
  end
end




# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display


# Reflection

# The program doesn't have a lot of user messages but it does work as I anticipated.
