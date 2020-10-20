require "sinatra/base"
require "./lib/bookmark"

class BookmarkManager < Sinatra::Base
  get "/" do
    "This is a bookmark manager."
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.bookmarks
    erb :bookmarks
  end

  run! if app_file == $0
end
