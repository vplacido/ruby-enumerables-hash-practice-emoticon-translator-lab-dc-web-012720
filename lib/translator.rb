# require modules here

def load_library(file)
  # code goes here
  lib = YAML.load_file(file)
  newLib = {get_emoticon: {}, get_meaning: {}}
  lib.each do |meaning, emoticon|
    newLib[:get_meaning][emoticon[1]] = meaning
    newLib[:get_emoticon][emoticon[0]] = emoticon[1]
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end