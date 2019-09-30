# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


20.times do |i|
  data = {
    title: "Test Title #{i}", 
    content: "Test Content #{i}"
    }
    note = Note.create(data)
    number_of_likes = rand(1..20)
    number_of_likes.times do |i|
      Like.create(note_id: note.id)
      Comment.create(note_id: note.id, content: "Test Comment #{i}")
    end 
end

