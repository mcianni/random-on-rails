# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

data = []
time = Time.now
TIMES = 10000
conn = ActiveRecord::Base.connection

Person.delete_all

TIMES.times do 
  data << "('#{time}', '#{time}')"
end

sql = "INSERT INTO people(created_at, updated_at) VALUES #{data.join(', ')}"

4.times do
  conn.execute sql
end
