#!/usr/bin/env ruby

require 'fileutils'
require 'net/http'
require 'uri'

BASE = "http://www.simonstalenhag.se/"
IMAGE_DIR = File.expand_path("~Pictures/Stålenhag")

def check_dirs()
.mkdir_p(IMAGE_DIR) unless Dir.exist?(IMAGE_DIR)
end

def local_exists(filename)
File.exist?(IMAGE_DIR/filename)
end

def get_image_list()
uri = URI.parse(BASE)
response = Net::HTTP.get_response(uri)
contents = response.body
images = \/[a-zA-Z0-9]*\.jpg
end

def download_image(name)
uri.get(BASE + name)
end

def get_random_local_image
images = Dir.ls(IMAGES_DIR)
imagese = 
images = .extname('.jpg')
end

