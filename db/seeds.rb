# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
specialities = ['General Doctor', 'Skin & Hair', 'Child Care', "Women's Health", 'Dentist', 'ENT', 'Homeopathy', 'Ayurveda']

gender_neutral_names = ['Avery Smith', 'Riley Williams', 'Jordan Jones', 'Angel Brown', 'Parker Davis', 'Quinn Miller', 'Blake Wilson', 'Finley Moore', 'Spencer Porter', 'Ariel Ross', 'Rory Gray', 'Eliot Watson', 'Morgan Brooks', 'Marley Bush', 'Harley Lee', 'Taylor Sanders' , 'Evan Rodriguez', 'Kendall Diaz', 'Alexis Russell', 'Charlie Harris']

likes = [10, 20, 30, 40, 50]

years_of_experience = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

20.times do
  Doctor.create!({
    name: gender_neutral_names.sample,
    years_of_experience: years_of_experience.sample,
    likes: likes.sample,
    speciality: specialities.sample
  })
end