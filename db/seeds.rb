# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin::Category.destroy_all
Admin::Product.destroy_all
categories_titles = %w(Фарби Шампуні Кондиціонери Лаки)
(0..4).each do |index|
  Admin::Category.create(title: categories_titles[index])
end
(0..100).each do |index|
  img = File.open(Rails.root.join("app/assets/images/def_img.png"))
  # file = File.open(Rails.root)
  length = 12
  offset = rand(Admin::Category.all.size - 1)
  Admin::Product.create!(age: rand(20..30),
                        appointment: rand(36**length).to_s(36),
                        application_time: '',
                        classification: rand(36**length).to_s(36),
                        made_in: 'England',
                        volume: '0.5',
                        desc: rand(36**110).to_s(36),
                        title: rand(36**length).to_s(36),
                        sex: 'male',
                        img: img,
                        price: rand(1000),
                        admin_category: Admin::Category.offset(offset).first
  )
end