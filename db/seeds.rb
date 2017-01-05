# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin::Product.destroy_all
(0..100).each do |index|
  img = File.open(Rails.root.join("app/assets/images/def_img.png"))
  # file = File.open(Rails.root)
  length = 12
  Admin::Product.create!(age: rand(10..20),
                        appointment: rand(36**length).to_s(36),
                        application_time: '',
                        classification: rand(36**length).to_s(36),
                        made_in: 'England',
                        volume: '0.5',
                        desc: rand(36**110).to_s(36),
                        title: rand(36**length).to_s(36),
                        sex: 'male',
                        img: img,
                        price: rand(1000)
  )
end