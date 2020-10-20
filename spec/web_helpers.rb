def add_to_test_database
  con = PG.connect( dbname: 'boomark_manager_test')
  con.exec "INSERT INTO bookmarks (url) VALUES('https://theuselessweb.com/')"
end