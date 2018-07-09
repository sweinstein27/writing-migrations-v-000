class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    connection = ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    SQL

ActiveRecord::Base.connection.execute(sql)
  end
end
