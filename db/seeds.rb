# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create(email: "test@email.com", password: "password", password_confirmation: "password")

text_from_json = File.read("#{Rails.root.to_s}/db/seeds/dinky_dyes.json")
JSON.parse(text_from_json).each do |t|
  Silk.create! ([{brand: t['brand'], thread_type: t["thread_type"], number: t['number'], color: t['color'] }] )
end

text_from_json = File.read("#{Rails.root.to_s}/db/seeds/metallics.json")
JSON.parse(text_from_json).each do |t|
  Metallic.create! ([{brand: t['brand'], thread_type: t['thread_type'], number: t['number'], color: t['color'], patterns: t['pattern'], stash: t['stash'] }] )
end

text_from_json = File.read("#{Rails.root.to_s}/db/seeds/patterns.json")
JSON.parse(text_from_json).each do |t|
  Pattern.create! ([{brand: t['brand'], pattern_name: t['pattern_name'], number: t['number'], color: t['color'], patterns: t['patterns'], size: t[size], stash: t['stash'], finished: t['finished'] }] )
end
