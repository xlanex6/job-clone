# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([( name:  Star Wars  ) ( name:  Lord of the Rings  )])
#   Character.create(name:  Luke  movie: movies.first)
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

#Job Seekers
User.create(first_name: "Jean", last_name: "Dupont", email: "jean.dupont@gmail.com", password: "123soleil", phone: "0673829323", title: "Developer Full Stack", bio: "Developer Fullstack depuis l enfance! C est trop cool", avatar: " ", skill_id: "5", cv: " ", website: " ", company: " ", user_type: "Job Seeker")
User.create(first_name: "John", last_name: "Smith", email: "john.smith@lewagon.fr", password: "123soleil", phone: "0839283949", title: "Photograph high lever", bio: "J adore prendre des photos. Super super super", avatar: " ", skill_id: "12", cv: " ", website:  " ", company: " ", user_type: "Job Seeker")
User.create(first_name: "George", last_name: "Abitbol", email: "george.abitbol@yahoo.fr", password: "123soleil", phone: "0789263728", title: "Ecrivain de génie", bio: "Des chiffres et des lettres mais surtout des lettres", avatar: " ", skill_id: "9", cv: " ", website: " ", company: " ", user_type: "Job Seeker")

# Employer
User.create(first_name: "Martine", last_name: "Lamy", email: "martine@edf.com", password: "123soleil", phone: "0673829323", title:  " ", bio: "Entreprise trop cool où il fait bon travail. on glande rien!", avatar:  " ", skill_id: "3", cv:  " ", website: "www.edf.fr", company: "EDF", user_type: "Employer")
User.create(first_name: "Catherine", last_name: "Laglande", email: "cathy.l@ratp.fr", password: "123soleil", phone: "0839283949", title:  " ", bio: "On travail pas beaucoup, on est bien payés! Venez", avatar:  " ", skill_id: "4", cv:  " ", website: "www.ratp.fr", company: "RATP", user_type: "Employer")
User.create(first_name: "George", last_name: "Latrique", email: "george@aviva.fr", password: "123soleil", phone: "0789263728", title:  " ", bio: "Des chiffres et des lettres mais surtout des lettres", avatar:  " ", skill_id: "2", cv:  " ", website: "www.aviva.fr", company: "AVIVA", user_type: "Employer")

# Jobs
Job.create(title:"Chef du monde", content:"domine le monde", start_time:Time.now, end_time:Time.now, address:"27 Rue des Francs Bourgeois, Paris", skill_id: 1, user_id:4)
Job.create(title:"Chef de la terre", content:"domine la terre", start_time:Time.now, end_time:Time.now, address:"58 Avenue de la Grande Armée, Paris", skill_id:2, user_id:4)
Job.create(title:"Patron", content:"domine la sieste", start_time:Time.now, end_time:Time.now, address:"56 Rue Cler, Paris", skill_id:3, user_id:4)
Job.create(title:"CTO", content:"domine les serveurs", start_time:Time.now, end_time:Time.now, address:"65 Rue du Rendez-Vous, Paris", skill_id:2, user_id:5)
Job.create(title:"Nerd en chef", content:"Dodo dans la matrice", start_time:Time.now, end_time:Time.now, address:"9 rue Rue de Buzenval , Paris", skill_id:4, user_id:4)
Job.create(title:"Assistant d assistant", content:"se fait dominer", start_time:Time.now, end_time:Time.now, address:"2 rue du Louvre , Paris", skill_id:5, user_id:5)
Job.create(title:"Secrétaire", content:"promotion canapé", start_time:Time.now, end_time:Time.now, address:"57 Avenue St Ouen, Paris", skill_id:2, user_id:5)
Job.create(title:"Stagiaire à vie", content:"pas de salaire", start_time:Time.now, end_time:Time.now, address:"204bis Rue de la Convention, Paris", skill_id:2, user_id:4)
Job.create(title:"Gestionnaire de barraque à frites", content:"vente de frites toute la journée", start_time:Time.now, end_time:Time.now, address:"27 Rue Balard, Paris", skill_id:5, user_id:4)
Job.create(title:"Assistant de direction assistée", content:"Poste pour fan d automobile", start_time:Time.now, end_time:Time.now, address:"2 Rue Joseph Liouville, Paris", skill_id:2, user_id:5)
Job.create(title:"Chef du rien", content:"Vous ne ferez rien de la journée", start_time:Time.now, end_time:Time.now, address:"5 Rue des Goncourt, Paris", skill_id:3, user_id:4)
Job.create(title:"Livreur de pizza", content:"Vous deviendrez pilote d élite", start_time:Time.now, end_time:Time.now, address:"22 Rue Littré ,Paris", skill_id:4, user_id:5)
