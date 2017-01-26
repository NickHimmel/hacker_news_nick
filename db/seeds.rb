# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

new_post1 = Post.create(title: "A Short History of 'Hack'", url: "http://www.newyorker.com/tech/elements/a-short-history-of-hack", user_id: 1, vote: 0)
new_post2 = Post.create(title: "Silicon Valley billionaires are ‘prepping’ to survive in underground bunkers", url: "http://www.recode.net/2017/1/23/14354840/silicon-valley-billionaires-prepping-survive-underground-bunkers-new-yorker", user_id: 1, vote: 0)
new_post3 = Post.create(title: "Out of the Shadows, the Wildcats You've Never Seen", url: "http://www.nationalgeographic.com/magazine/2017/02/photo-ark-little-cats/Yes", user_id: 1, vote: 0)
new_post4 = Post.create(title: "Yes, Organic Farming Will Kill Us All", url: "https://shift.newco.co/yes-organic-farming-will-kill-us-all-12d900979cf2#.bi4c3zeyq", user_id: 1, vote: 0)
new_post5 = Post.create(title: "End of the Line for Penn Station’s Departure Board", url: "https://nyti.ms/2kq5ruZ", user_id: 1, vote: 0)
new_post6 = Post.create(title: "Can Technology Save Us From the Sedentary Lifestyle It Helped Create?", url: "https://theringer.com/can-technology-save-us-from-the-sedentary-lifestyle-it-helped-create-ddd9f814d063#.nta9ti57m", user_id: 1, vote: 0)
