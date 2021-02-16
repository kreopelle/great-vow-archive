# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chozen = Speaker.create(name: 'Chozen Bays', role: 'Roshi')
hogen = Speaker.create(name: 'Hogen Bays', role: 'Roshi')
jomon = Speaker.create(name: 'Laura Jomon Martin', role: 'Dharma Teacher')
jogen = Speaker.create(name: 'Jogen', role: 'Sensei')
myoyu = Speaker.create(name: 'Myoyu Voekel')

heart_of_wisdom = Location.create(name: 'Heart of Wisdom')
great_vow = Location.create(name: 'Great Vow')

DharmaTalk.create([
                    {
                      title: 'How to Live Non-Duality? On the koan Joshu and the Hermits',
                      speaker: hogen,
                      location: heart_of_wisdom,
                      date: Date.new(2018, 0o5, 10)
                    },
                    {
                      title: 'Everyday is a Good Day',
                      speaker: jomon,
                      location: great_vow,
                      date: Date.new(2021, 0o1, 27)
                    },
                    {
                      title: 'Enter the Bright Clear Open',
                      speaker: chozen,
                      location: great_vow,
                      date: Date.new(2014, 9, 0o1)
                    },
                    {
                      title: 'Golden Thread of Buddha Nature',
                      speaker: chozen,
                      location: great_vow,
                      date: Date.new(2018, 10, 0o1)
                    },
                    {
                      title: 'How to be a Student of Dharma?',
                      speaker: jogen,
                      location: heart_of_wisdom,
                      date: Date.new(2017, 10, 0o2)
                    },
                    {
                      title: 'Wind in the Warehouse',
                      speaker: chozen,
                      location: great_vow,
                      date: Date.new(2021, 0o2, 11)
                    },
                    {
                      title: 'Always Changing and Continuously Creative',
                      speaker: myoyu,
                      location: great_vow,
                      date: Date.new(2021, 0o2, 11)
                    },
                    {
                      title: 'Floating on the Waves of the Universe',
                      speaker: hogen,
                      location: great_vow,
                      date: Date.new(2021, 0o1, 23)
                    },
                    {
                      title: 'The Mystery of Intention',
                      speaker: jomon,
                      location: great_vow,
                      date: Date.new(2021, 0o1, 22)
                    }
                  ])

puts 'Database seeded!'
