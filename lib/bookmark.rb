require './db/list_bookmarks.rb'

class Bookmark
  attr_reader :name, :url

  def self.bookmarks
    $urls
  end

  def initialize(name, url)
    @name = name
    @url = url
  end
end
