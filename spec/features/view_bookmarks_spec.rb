feature "see a list of bookmarks" do
  scenario "when we visit the bookmarks route" do
    visit("/bookmarks")
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.google.com")
  end
end
