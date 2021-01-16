# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Member.create(
    [
        {
          "first_name": "Sergei",
          "last_name": "SmirnoffPetroff",
          "tel": 9195223309,
          "email": "sergeismirnoff@gmail.com",
          "status": "Available",
          "color": "Grey"
        },
        {
          "first_name": "Andrei",
          "last_name": "Komolov",
          "tel": 9195223310,
          "email": "andreykomolov@gmail.com",
          "status": "Available",
          "color": "Red"
        },
        {
          "first_name": "Ivan",
          "last_name": "Petroff",
          "tel": 9195223311,
          "email": "ivanpetroff@gmail.com",
          "status": "Available",
          "color": "Blue"
        },
        {
          "first_name": "David",
          "last_name": "Smirnoff",
          "tel": 9195223312,
          "email": "davidsmirnoff@gmail.com",
          "status": "Available",
          "color": "Green"
        },
        {
          "first_name": "Maks",
          "last_name": "Ivanoff",
          "tel": 9195223313,
          "email": "maksivanov@gmail.com",
          "status": "Available",
          "color": "Purple"
        }
      ]
)


Task.create(
    [   
        {
            title: "Do codding every day",
            done: "true",
            member_id: 1
        },
        {
            title: "Go to shop",
            done: "false",
            member_id: 2
        },
        {
            title: "Go to shop",
            done: "false",
            member_id: 2
        },
        {
            title: "Check mail",
            done: "false",
            member_id: 3
        },
        {
            title: "Go to shop",
            done: "false",
            member_id: 3
        },
        {
            title: "Go to shop",
            done: "false",
            member_id: 3
        },
        {
            title: "Go to shop",
            done: "false",
            member_id: 4
        },
        {
            title: "Go to shop",
            done: "false",
            member_id: 4
        },
        {
            title: "Go to shop",
            done: "false",
            member_id: 4
        },
        {
            title: "Go to shop",
            done: "false",
            member_id: 4
        },
        {
            title: "Load Dishes",
            done: "false",
            member_id: 5
        },
        {
            title: "Do a Homework",
            done: "false",
            member_id: 5
        }
    ]
)

