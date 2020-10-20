feature "see a list of bookmarks" do
  scenario "when we visit the bookmarks route" do
    visit("/bookmarks")
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.askjeeves.com")
    expect(page).to have_content("http://www.twitter.com")
  end
end
