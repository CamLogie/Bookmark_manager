def add_to_test_database
  con = PG.connect( dbname: 'test_bookmark_manager')
  con.exec "INSERT INTO bookmarks (url) VALUES('https://theuselessweb.com/')"
end