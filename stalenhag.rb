#!/usr/bin/env ruby

require 'fileutils'
require 'net/http'
require 'uri'

BASE = "http://www.simonstalenhag.se/"
IMAGE_DIR = File.expand_path("~Pictures/Stålenhag")

def check_dirs()
  FileUtils.mkdir_p(IMAGE_DIR) unless Dir.exist?(IMAGE_DIR)
end

def local_exists(filename)
  File.exist?(IMAGE_DIR/filename)
end

def get_image_list()
  uri = URI.parse(BASE)
  response = Net::HTTP.get_response(uri)
  contents = response.body
  #images = Regexp.new("/[a-zA-Z0-9]*.jpg")
  images = %r(/[a-zA-Z0-9]*.jpg)
end

def download_image(name)
  uri.get(BASE + name)
end

def get_random_local_image
images = Dir.entries(IMAGE_DIR)
images = 
images = File.extname('.jpg')
end
