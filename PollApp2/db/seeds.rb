# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(user_name: "Peter")
user2 = User.create(user_name: "Matt")

poll1 = Poll.create(author_id: user1.id, title: "Your favorite things")

question_color = Question.create(poll_id: poll1.id, text: "Your favorite color?")
question_car = Question.create(poll_id: poll1.id, text: "Your favorite car?")

blue = AnswerChoice.create(question_id: question_color.id, text: "Blue")
green = AnswerChoice.create(question_id: question_color.id, text: "Green")
red = AnswerChoice.create(question_id: question_color.id, text: "Red")

bmw = AnswerChoice.create(question_id: question_car.id, text: "BMW")
toyota = AnswerChoice.create(question_id: question_car.id, text: "Toyota")

#Matt's responses
response1 = Response.create(answer_choice_id: blue.id, user_id: user2.id)
response2 = Response.create(answer_choice_id: bmw.id, user_id: user2.id)

#Peter's responses
response3 = Response.create(answer_choice_id: green.id, user_id: user1.id)
response4 = Response.create(answer_choice_id: toyota.id, user_id: user1.id)
