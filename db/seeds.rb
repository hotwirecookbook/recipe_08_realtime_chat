usernames = ['luke', 'leia', 'han', 'chewbacca', 'obiwan']

usernames.each do |username|
  User.create!(
    email: "#{username}@rebels.com",
    password: "password",
    password_confirmation: "password"
  )
end

chatrooms = [
  { name: "Fight the empire" },
  { name: "Rebel Alliance" },
  { name: "Jedi Stuff" },
  { name: "General" }
]

Chatroom.create!(chatrooms)