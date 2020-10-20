require 'pg'

begin
  
  con = PG.connect( dbname: 'bookmark_manager')

  rs = con.exec "SELECT * FROM bookmarks"

  $urls = []

  rs.each do |row|
    $urls << ("%s" % [ row['url'] ])
  end

rescue PG::Error => e 

  puts e.message

ensure

  rs.clear if rs
  con.close if con

end