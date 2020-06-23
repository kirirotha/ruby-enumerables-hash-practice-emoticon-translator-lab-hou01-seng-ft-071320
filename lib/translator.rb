# require modules here
require "yaml"
def load_library
  emoticons = YAML.load_file('lib/emoticons.yml')
  emoticons_sort = {}
  emoticons.each do |emotions, emote|
    puts emoticons[emotions][0]
    puts emoticons[emotions][1]
    if !emoticons_sort[emotions]
      emoticons_sort[emotions] = {}
    end
    #emoiticons_sort[emotions] << :english: emoticons[emotions][0]
  end
  puts emoticons_sort
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library