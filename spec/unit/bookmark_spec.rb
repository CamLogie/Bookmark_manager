require "./lib/bookmark.rb"

describe Bookmark do
  it "responds to the class method .bookmarks by return a list of bookmarks" do
    add_to_test_database
    expect(Bookmark.bookmarks).to eq ['https://theuselessweb.com/', 'https://test.com/']
  end
end
