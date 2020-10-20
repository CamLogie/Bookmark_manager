class Bookmark
  attr_reader :name, :url

  def self.bookmarks
    load './db/list_bookmarks.rb'
  end

  def initialize(name, url)
    @name = name
    @url = url
  end
end
