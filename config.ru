# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

require 'cloudinary'

Cloudinary.config_from_url("cloudinary://254472293226773:sbAD9YBpOv2akpF_F5RtYmI9zEw@dkefcoe8x")
Cloudinary.config do |config|
  config.secure = true
end

require 'rack/cors'
use Rack::Cors do

 # allow all origins in development
 allow do
   origins '*'
   resource '*',
       :headers => :any,
       :methods => [:get, :post, :delete, :put, :options]
 end
end

run Rails.application



