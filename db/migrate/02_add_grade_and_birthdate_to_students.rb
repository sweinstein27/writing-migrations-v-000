class AddGrade < ActiveRecord::Migration[5.1]
  def change
    connection = ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS artists (
    id INTEGER PRIMARY KEY,
    name STRING,
    genre TEXT,
    age INTEGER,
    hometown TEXT
    )
    SQL

ActiveRecord::Base.connection.execute(sql)
  end
end
