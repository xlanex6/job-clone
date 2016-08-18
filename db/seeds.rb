
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

20.times do
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
#Job Seekers
50.times do
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

#Jobs

500.times do
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
