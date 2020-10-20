require 'pg'

class Bookmark
  attr_reader :name, :url

  def self.bookmarks
    con = PG.connect( dbname: 'bookmark_manager')
    rs = con.exec('SELECT * FROM bookmarks')
    rs.map do |row|
      row['url']
    end
  end

  def initialize(name, url)
    @name = name
    @url = url
  end
end
