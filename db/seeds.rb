# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([( name: 'Star Wars' ) ( name: 'Lord of the Rings' )])
#   Character.create(name: 'Luke' movie: movies.first)
Skill.destroy_all
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

Jobs.create(title:"Chef du monde", content:"domine le monde", start_time:"Date.now", end_time:"Date.now", address:"3 rue blabla", skill_id:1, user_id:4)
Jobs.create(title:"Chef de la terre", content:"domine la terre", start_time:"Date.now", end_time:"Date.now", address:"3 rue blabla", skill_id:2, user_id:4)
Jobs.create(title:"Patron", content:"domine la sieste", start_time:"Date.now", end_time:"Date.now", address:"5 rue blabla", skill_id:3, user_id:4)
Jobs.create(title:"CTO", content:"domine les serveurs", start_time:"Date.now", end_time:"Date.now", address:"7 rue blabla", skill_id:2, user_id:5)
Jobs.create(title:"Nerd en chef", content:"Dodo dans la matrice", start_time:"Date.now", end_time:"Date.now", address:"9 rue blabla", skill_id:4, user_id:4)
Jobs.create(title:"Assistant d'assistant", content:"se fait dominer", start_time:"Date.now", end_time:"Date.now", address:"2 rue blabla", skill_id:5, user_id:5)
Jobs.create(title:"Secrétaire", content:"promotion canapé", start_time:"Date.now", end_time:"Date.now", address:"10 rue blabla", skill_id:2, user_id:5)
Jobs.create(title:"Stagiaire à vie", content:"pas de salaire", start_time:"Date.now", end_time:"Date.now", address:"43 rue blabla", skill_id:2, user_id:4)
Jobs.create(title:"Gestionnaire de barraque à frites", content:"vente de frites toute la journée", start_time:"Date.now", end_time:"Date.now", address:"22 rue blabla", skill_id:5, user_id:4)
Jobs.create(title:"Assistant de direction assistée", content:"Poste pour fan d'automobile", start_time:"Date.now", end_time:"Date.now", address:"120 rue blabla", skill_id:2, user_id:6)
Jobs.create(title:"Chef du rien", content:"Vous ne ferez rien de la journée", start_time:"Date.now", end_time:"Date.now", address:"0 rue blabla", skill_id:3, user_id:6)
Jobs.create(title:"Livreur de pizza", content:"Vous deviendrez pilote d'élite", start_time:"Date.now", end_time:"Date.now", address:"1000 rue blabla", skill_id:4, user_id:6)
