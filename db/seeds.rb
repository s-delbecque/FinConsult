Service.reindex
User.reindex

puts "deleting data"

ServiceRequest.destroy_all
Service.destroy_all
User.destroy_all

#users ----- seeding 3 users (2 consultants and 1 client)

puts "creating users"
user1 = User.create!(first_name: "Elizabeth", last_name:"Delacroix", password: '123456', email: "test1@gmail.com")
user1.remote_profile_picture_url = "https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80"
user1.save
user2 = User.create!(first_name: "John", last_name: "Robinson", password: '123456', email: "test2@gmail.com")
user2.remote_profile_picture_url = "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80"
user2.save
user3 = User.create!(first_name: "Steve", last_name: "McMaony", password: '123456', email: "test3@gmail.com")
user3.remote_profile_picture_url = "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80"
user3.save

#services  ----- seeding 9 services (for at least 6 different categories)
puts "creating services"
service1 = Service.create!(user: User.all.sample, name: "Program Renewal", description: "Specialized in the overall revision of renewal for international insurance programs",rate_per_day: 450, address: "Brussels", category: "Renewal")
service2 = Service.create!(user: User.all.sample, name: "Healthcare Benefit", description: "Supporting Client in employee benefit schemes optimization, based on the claims experience",rate_per_day: 550, address: "London", category: "Healthcare")
service3 = Service.create!(user: User.all.sample, name: "Policy Renewal", description: "Revision of ad hoc policies to optimize their performance",rate_per_day: 660, address: "Cayman Island", category: "Renewal")
service4 = Service.create!(user: User.all.sample, name: "Claim Trends", description: "Investigation on claim trends, to anticipate business performance deterioration",rate_per_day: 470, address: "New York", category: "Claim Experience")
service5 = Service.create!(user: User.all.sample, name: "Local Insurers Audit", description: "Auditing local providers to ensure their compliance with GDPR",rate_per_day: 1200, address: "London", category: "Technical Review")
service6 = Service.create!(user: User.all.sample, name: "Data Mining", description: "Unveiling your data meaning",rate_per_day: 300, address: "Dublin", category: "Data Analytics")
service7 = Service.create!(user: User.all.sample, name: "Business Processes", description: "Stuggling with your business provider services? Let's investigate together their processes hiccups",rate_per_day: 830, address: "Bermuda", category: "Technical Review")
service8 = Service.create!(user: User.all.sample, name: "Your Preferred Set-Up", description: "Supporting you the definition of your insurance set-up, to make the most out of it",rate_per_day: 520, address: "Cayman Island", category: "Program Set-up")
service9 = Service.create!(user: User.all.sample, name: "Your Business Insights", description: "Rely on the expert of data story-telling",rate_per_day: 480, address: "Guernsey", category: "Data Analytics")


#servicerequests  ----- seeding 2 servicerequests (for 1 client with 2 different consultant offering them)
puts "creating service requests"
servicerequest1 = ServiceRequest.create!(service: Service.all.sample, user: User.all.sample, description: "Shall optimize performance in Spain", time_frame:"2 weeks", status:"pending")
servicerequest2 = ServiceRequest.create!(service: Service.all.sample, user: User.all.sample, description: "Shall audit service provide in Hong Kong", time_frame:"3 month mission", status:"in progress")
