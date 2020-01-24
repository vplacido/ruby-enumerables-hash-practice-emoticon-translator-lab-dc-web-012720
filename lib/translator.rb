# require modules here
require "yaml"

def load_library(file)
  # code goes here
  lib = YAML.load_file(file)
  newLib = {get_emoticon: {}, get_meaning: {}}
  lib.each do |meaning, emoticon|
    newLib[:get_meaning][emoticon[1]] = meaning
    newLib[:get_emoticon][emoticon[0]] = emoticon[1]
  end 
  newLib
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  lib = load_library(path)
  if lib[:get_emoticon].include?(emoticon)
    return lib[:get_emoticon][emoticon]
  else
    return ""
end

def get_english_meaning
  # code goes here
end