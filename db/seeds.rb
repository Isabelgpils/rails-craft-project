# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create(email: "isabelgpils@gmail.com", password: "password", password_confirmation: "password")

# Pattern.destroy_all
# text_from_json = File.read("/Users/isabelgutierrez-pils/code/stitch-app/db/seeds/patterns.json")
# JSON.parse(text_from_json).each do |t|
#   Pattern.create! ([{brand: t['brand'], number: t['number'], pattern_name: t['pattern_name'], size: t['size'] }] )
# end
# Bead.destroy_all
# text_from_json = File.read("/Users/isabelgutierrez-pils/code/stitch-app/db/seeds/beads.json")
# JSON.parse(text_from_json).each do |t|
#   Bead.create! ([{number: t['number'], color: t['color'], pattern: t['pattern'] }] )
# end
# Metallic.destroy_all
# text_from_json = File.read("/Users/isabelgutierrez-pils/code/stitch-app/db/seeds/metallics.json")
# JSON.parse(text_from_json).each do |t|
#   Metallic.create! ([{brand: t['brand'], thread_type: t['thread_type'], number: t['number'], color: t['color'] }] )
# end

# text_from_json = File.read("/Users/isabelgutierrez-pils/code/stitch-app/db/seeds/dinky_dyes.json")
# JSON.parse(text_from_json).each do |t|
#   Silk.create! ([{brand: t['brand'], thread_type: "silk", number: t['number'], color: t['color'] }] )
# end
# text_from_json = File.read("/Users/isabelgutierrez-pils/code/stitch-app/db/seeds/gloriana.json")
# JSON.parse(text_from_json).each do |t|
#   Silk.create! ([{brand: t['brand'], thread_type: "silk", number: t['number'], color: t['color'] }] )
# end
# text_from_json = File.read("/Users/isabelgutierrez-pils/code/stitch-app/db/seeds/gloriana.json")
# JSON.parse(text_from_json).each do |t|
#   Silk.create! ([{brand: t['brand'], thread_type: "silk", number: t['number'], color: t['color'] }] )
# end
# text_from_json = File.read("/Users/isabelgutierrez-pils/code/stitch-app/db/seeds/thread_gatherer.json")
# JSON.parse(text_from_json).each do |t|
#   Silk.create! ([{brand: t['brand'], thread_type: "silk", number: t['number'], color: t['color'] }] )
# end
text_from_json = File.read("/Users/isabelgutierrez-pils/code/stitch-app/db/seeds/caron.json")
JSON.parse(text_from_json).each do |t|
  Silk.create! ([{brand: t['brand'], thread_type: t["thread_type"], number: t['number'], color: t['color'] }] )
end