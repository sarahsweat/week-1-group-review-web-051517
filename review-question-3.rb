# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

require 'pry'

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def photos
    Photo.all.select do |photo|
      photo.user == self
    end
  end
end

class Photo
  attr_accessor :user

  @@all = []

  def initialize
    @comments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def make_comment(text)
    @comments << Comment.new(text)
  end

  def comments
    @comments
  end
end

class Comment
  attr_accessor :text

  @@all = []

  def initialize(text)
    @text = text
    @@all << self

  end

  def self.all
    @@all
  end
end


photo = Photo.new
user = User.new("Sophie")

photo.user = user
binding.pry
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]
photo.comments
# => []
photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]
Comment.all
#=> [<comment1>]
