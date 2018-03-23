# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'Custumer', email: 'custumer@custumer.com', role: 0,
            password: '12345678', password_confirmation: '12345678')

User.create(name: 'Staff', email: 'staff@staff.com', role: 1,
            password: '12345678', password_confirmation: '12345678')

User.create(name: 'Admin', email: 'admin@admin.com', role: 2,
            password: '12345678', password_confirmation: '12345678')
