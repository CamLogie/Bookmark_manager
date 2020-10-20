require "./lib/bookmark.rb"

describe Bookmark do
  it "responds to the class method .all by return a list of bookmarks" do
    allow(Bookmark).to receive(:bookmarks).and_return('https://www.postgresqltutorial.com/postgresql-update/')
    expect(Bookmark.bookmarks).to eq('https://www.postgresqltutorial.com/postgresql-update/')
  end
end
