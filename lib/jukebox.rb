songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |item, index| puts "#{index + 1}. #{item}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip

  valid_nums = []
  songs.each_with_index { |item, index| valid_nums << index + 1}
  valid_songs = []
  songs.each_with_index { |item, index| valid_songs << item}

  if valid_nums.include? input.to_i
    input = input.to_i
  else
    input = input
  end

  if valid_nums.include? input
    puts "Playing #{songs[input-1]}"
  elsif valid_songs.include? input
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true do
  
    puts "Please enter a command:"
    input = gets.chomp

    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
    break 
    else
      puts "Invalid input, please try again"
    end
  end
end
