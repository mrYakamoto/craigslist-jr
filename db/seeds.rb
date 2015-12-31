category_list = [
  "housing",
  "jobs",
  "for sale",
  "personals",
  "community",
  "services"
]

category_list.each do |title|
  Category.create( title: title )
end

articles_list = [
  ["housing", "Sweet Apartment!", "Awesome studio in Nob Hill!", "me@gmail.com"],
  ["housing", "Entire House", "Amazing house inside Coitus Tower", "them@gmail.com"],
  ["housing", "Basement Dungeon", "Vintage dungeon under hip neighborhood", "Igor@gmail.com"],
  ["jobs", "Video Editor", "Lead Video Editor for docu-reality tv series", "pierre@yahoo.com"],
  ["jobs", "Dog Walker", "Part-time work for doggie hotel", "barkbark@me.com"],
  ["jobs", "Janitor", "Assistant janitor for office", "Bagles123@gmail.com"]
]

articles_list.each do |category, title, description, email|
  Category.find_by(title: category).articles.create(title: title, description: description, email: email)
end
