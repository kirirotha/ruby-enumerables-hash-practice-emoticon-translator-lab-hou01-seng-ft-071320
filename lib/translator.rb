# require modules here
require "yaml"
file_in = "lib/emoticons.yml"
ee = "(#^.^#)"
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
  #puts emoticons_sort
  emoticons_sort
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(file_in, jap_emote)
  emoticons_sort = load_library(file_in)
  puts emoticons_sort
  # code goes here
    emoticons_sort.each do |key1, value1|
      #puts key1
      puts value1[:japanese]
      if value1[:japanese]
        english_trans = value1[:english]
      end
    end
  
  #puts english_trans
  #english_trans
end

get_english_meaning(file_in, ee)