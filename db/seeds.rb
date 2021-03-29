# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{name: "daniel", email: 'example@mail.com', password: "sample"}])

Sport.create([
  { 
    name: 'Morning 5k run',
    minutes: 24,
    seconds: 34,
    distance: 5,
    notes: '1 mile PB'
  },
  { 
    name: 'Morning 5k run',
    minutes: 24,
    seconds: 34,
    distance: 5,
    notes: '1 mile PB'
  },
  { 
    name: 'Morning 10k run',
    hours: 1,
    minutes: 24,
    seconds: 34,
    distance: 5,
    notes: '1 mile PB'
  },
  { 
    name: 'Morning 5k run',
    minutes: 24,
    seconds: 34,
    distance: 5,
    notes: '1 mile PB'
  }
])
