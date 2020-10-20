feature "see a list of bookmarks" do
  scenario "when we visit the bookmarks route" do
    add_to_test_database
    visit("/bookmarks")
    expect(page).to have_content("https://theuselessweb.com/")
  end
end
