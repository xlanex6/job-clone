puts "Initialize seeding..."

puts "Destroy ALL"

Application.destroy_all
Job.destroy_all
User.destroy_all
Skill.destroy_all

puts " All user / skill / job / application DESTROY "

##########Dashboard############

employers = 20
jobseekers = 100
job = 150

###############################

puts "Create Skills"
Skill.create(name:"Employer")
Skill.create(name:"Designer")
Skill.create(name:"Web Designer")
Skill.create(name:"Seo")
Skill.create(name:"Model")
Skill.create(name:"Developper Ruby")
Skill.create(name:"Developper Javascipt")
Skill.create(name:"Project Manager")
Skill.create(name:"Product Manager")
Skill.create(name:"Writer")
Skill.create(name:"Community Manager")
Skill.create(name:"Video Maker")
Skill.create(name:"Photo Director")


# Employer
puts "Create Employers... "
employers.times do
  User.create(
    first_name: Faker::Name.fr_first_name_f,
    last_name: Faker::Name.fr_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    phone: Faker::PhoneNumber.fr_cellphone_number,
    website: Faker::Internet.domain_name,
    company: Faker::Company.fr_name,
    user_type: "Employer"
  )
end
puts " #{employers} Employers created"
puts "Create Jobs seekers.... "
#Job Seekers
jobseekers.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.fr_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    phone: Faker::PhoneNumber.fr_cellphone_number,
    website: Faker::Internet.domain_name,
    company: Faker::Company.fr_name,
    user_type: "Job Seeker"
  )
end
puts "#{jobseekers} Jobs seekers created"

#Jobs
puts "Create Jobs...."
job.times do
  nbre = rand(1..93)
  city_data = Faker::Address.fr_zip_and_city_in_region(nbre)
  skill = Skill.all.sample
  Job.create(
    content: Faker::StarWars.quote,
    start_time: Faker::Date.forward(5),
    end_time: Faker::Date.forward(45) + 5,
    address: "#{Faker::Address.fr_street_name} #{city_data[1]} #{city_data[0]}",
    skill_id: skill.id,
    user_id: rand(1..20),
    title: skill.name + [" chief"," director", " junior", " senior"].sample,
  )
end
puts "#{job} jobs created"

# add Perso users
puts "Add alex user as Employer"
User.create(
  first_name: "Alex",
  last_name: "Duval",
  email: "alex@gmail.com",
  password: "123soleil",
  phone: Faker::PhoneNumber.fr_cellphone_number,
  website: Faker::Internet.domain_name,
  company: Faker::Company.fr_name,
  user_type: "Employer"
)
puts "Add cyril user as Employer"
User.create(
  first_name: "Cyril",
  last_name: "Fougeres",
  email: "cyril@gmail.com",
  password: "123soleil",
  phone: Faker::PhoneNumber.fr_cellphone_number,
  website: Faker::Internet.domain_name,
  company: Faker::Company.fr_name,
  user_type: "Employer"
)
puts "Add Vincent user as Employer"
User.create(
  first_name: "Vincent",
  last_name: "Hamonic",
  email: "vincent@gmail.com",
  password: "123soleil",
  phone: Faker::PhoneNumber.fr_cellphone_number,
  website: Faker::Internet.domain_name,
  company: Faker::Company.fr_name,
  user_type: "Employer"
)

puts "Seed succedd - Enjoy ;) "
