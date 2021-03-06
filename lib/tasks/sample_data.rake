namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_articles
  end
end

def make_articles
  users = User.all(limit: 6)
  50.times do
    content = Faker::Lorem.sentence(5)
	title = Faker::Lorem.sentence(5)
    users.each { |user| user.articles.create!(title: title, content: content) }
  end
end