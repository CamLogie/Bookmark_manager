require 'pg'

class Bookmark
  attr_reader :name, :url

  def self.bookmarks
    if ENV['ENVIRONMENT'] ='test'
      con = PG.connect( dbname: 'boomark_manager_test')
    else
      con = PG.connect( dbname: 'bookmark_manager')
    end
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
