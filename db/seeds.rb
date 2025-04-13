# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "profiles"
links = [
  {
    name: "GitHub",
    username: "ChrisFDev00",
    url: "https://github.com/chrisfdev00",
  },
  {
    name: "LinkedIn",
    username: "chrisjfagg",
    url: "https://linkedin.com/in/chrisjfagg",
  },
  {
    name: "Writebook",
    username: "",
    url: "https://writebook.christopherfagg.me",
  }
]

links.each do
  SocialChannel.create!(it)
end

puts "contributions"
contributions = [
  {
    name: "Amend cat generator URL in readme",
    repository: "https://github.com/e1ven/Robohash/pull/58",
    details: "Issue requested dead link in README be updated",
  },
  {
    name: "Update index.md",
    repository: "https://github.com/CodeYourFuture/curriculum/pull/1192",
    details: "Noticed part of the curriculum for CodeYourFuture could be improved with a guide, added said guide.",
  },
  {
    name: 'Correct "fomr" to "from"',
    repository: "https://gitlab.com/kalilinux/documentation/kali-docs/-/merge_requests/349",
    details: "Typo in the Kali docs for VMWare Fusion use",
  }
]

contributions.each do
  Contribution.create!(it)
end
