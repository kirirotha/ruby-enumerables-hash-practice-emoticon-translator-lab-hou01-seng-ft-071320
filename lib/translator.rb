# require modules here
require "yaml"
file_in = ".lib/emoticons.yml"
def load_library(file_in)
  emoticons = YAML.load_file(file_in)
  emoticons_sort = {}
  emoticons.each do |emotions, emote|
    #puts emoticons[emotions][0]
    #puts emoticons[emotions][1]
    if !emoticons_sort[emotions]
      emoticons_sort[emotions] = {}
    end
    emoticons_sort[emotions][:english] =  emoticons[emotions][0]
    emoticons_sort[emotions][:japanese] = emoticons[emotions][1]
  end
  puts emoticons_sort
  emoticons_sort
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

