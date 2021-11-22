namespace :dev do
  desc "Configure the development enviroment"
  task setup: :environment do
    if Rails.env.development? or Rails.env.test?
      %x{rails db:drop db:create db:migrate}
      10.times do |i|
        Category.create!(name: Faker::Book.genre)
      end

      40.times do
        Book.create!(title: Faker::Book.title, author: Faker::Book.author, category: Category.all.sample)
      end
    else
      puts "You are not in the development enviroment"
    end
  end

end
