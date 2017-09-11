require 'pp'
require_relative 'user'

user = User.new 'layla@gmail.com','layla'

pp user

user.save
