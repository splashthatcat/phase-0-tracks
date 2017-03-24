# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#add the /contact and the /great_job routes

get '/contact' do
  "119 Lake Street, Manchester, CT"
end

get '/great_job/' do
  name = params[:name]
  if name
  "Great job #{name}!"
  else
    "Really great job!"
  end
end

#add addition route

get '/math/:number1/:number2' do
  num1 = params[:number1].to_i
  num2 = params[:number2].to_i
  result = num1 + num2
  "<p>equation you've chosen: #{num1} + #{num2} =  #{result}</p>"
end

#add bonus route - the student directionary

get '/schools/' do
  school = params[:school]
  students = db.execute("select * from students where campus='#{school}'");
  response = ''
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

get '/column/:column_name/:value' do
  column = params[:column_name]
  value = params[:value]
  students = db.execute("select * from students where #{column}='#{value}'");
  response = ''
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br>"
  end
  response
end

students = db.execute('select * from students')
p students.sort
