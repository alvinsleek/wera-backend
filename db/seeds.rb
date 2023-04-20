

# puts "Starts seeding"
# # USER
# user1 = User.create!(email_address:'werabosses@ymail.com', password:'98765', password_confirmation:'98765', user_type:'Admin',
# is_admin:true)
# user2 = User.create!(email_address:'ndungujeffy@yahoo.com', password:'abc123', password_confirmation:'abc123', user_type:'Jobseeker',
# is_admin:false)
# user3 = User.create!(email_address:'citizenlive2@yahoo.com', password:'456bcd', password_confirmation:'456bcd', user_type:'Jobseeker',
# is_admin:false)
# user4 = User.create!(email_address:'ntvkenyas@gmail.com', password:'789efg',password_confirmation:'789efg',  user_type:'Employer',
# is_admin:false)
# user5 = User.create!(email_address:'ktnnewss@yahoo.com', password:'256jef', password_confirmation:'256jef', user_type:'Employer',
# is_admin:false)

# # Employer
# employer1 = Employer.create!(full_name:'Moringa School' ,company_name:'Moringa Bootcamp' ,email_address:'moringa@bootcamp.com' ,company_location:'Nairobi' ,user_id:'1' ,company_description:'A tech company thats gives young people a place to learn coding')
# employer2 = Employer.create!(full_name:'Safaricom' ,company_name:'Telecommunications' ,email_address:'safaricomkenya@yahoo.com' ,company_location:'Thika' ,user_id:'2' ,company_description:'Telecommunication company that offers international communication')
# employer3 = Employer.create!(full_name:'Spotify' ,company_name:'Rhytmic Sounds' ,email_address:'rhytmicmusic@gmail.com' ,company_location:'Kakamega' ,user_id:'3' ,company_description:'We offer the best music available in the world')
# employer4 = Employer.create!(full_name:'Microsoft' ,company_name:'Bill Gates Foundations' ,email_address:'microsoftgates@gmail.com' ,company_location:'Nakuru' ,user_id:'4' ,company_description:'Offers tech surveys for companies')
# employer5 = Employer.create!(full_name:'Twiga Foods' ,company_name:'Bwibo Foods' ,email_address:'twigafoods@gmail.com' ,company_location:'Kenol' ,user_id:'5' ,company_description:'We offer fresh farm products')

# Profile.create([
#     { 
#       user_id: 1,
#       full_name: "Jeff Ndungu",
#       phone_number: "079865231",
#       date_of_birth: "1990-01-01",
#       skills: "Ruby on Rails, JavaScript, React",
#       biography: "I am a full stack developer with 5 years of experience.",
#       resume: "https://example.com/john_doe_resume.pdf"
#     },
#     { 
#       user_id: 2,
#       full_name: "Ndungu Jeff",
#       phone_number: "0762727181",
#       date_of_birth: "1995-05-05",
#       skills: "Python, Django, SQL",
#       biography: "I am a software engineer who loves building scalable web applications.",
#       resume: "https://example.com/jane_smith_resume.pdf"
#     },
#     { 
#       user_id: 3,
#       full_name: "Bob Kamau",
#       phone_number: "345-678-9012",
#       date_of_birth: "1992-12-31",
#       skills: "Java, Spring Boot, Angular",
#       biography: "I am a passionate developer with experience in both front-end and back-end development.",
#       resume: "https://example.com/bob_johnson_resume.pdf"
#     }
#   ])

# experiences = Experience.create([
#     {
#         year: "2015",
#         company: "Sleek Solutions",
#         job_description:"Developing front end website architecture",
#         profile_id:1
#     },
#     {

#         year: 2017,
#         company: "Bidco Africa Ltd",
#         job_description:"Designing user interactions on web pages.",
#         profile_id:2
#     },
#     {

#         year: 2018,
#         company:"Deloitte Group",
#         job_description:"Developing back end website applications.",
#         profile_id:1
#     },
#     {

#         year: 2020,
#         company:"East Afrcian Breweries Limited",
#         job_description:"Creating servers and databases for functionality.",
#         profile_id:2
#     },
#     {

#         year: 2022,
#         company:"Safaricom PLC",
#         job_description:"Working alongside graphic designers for web design features.",
#         profile_id:1
#     }
# ])

# educations = Education.create([
#     {

#         year_of_admission: 2008,
#         year_of_completion: 2015,
#         institution:"Mustard Seed Schools",
#         qualification:"Primagry Diploma",
#         profile_id:1
#     },
#     {

#         year_of_admission: 2016,
#         year_of_completion:2019,
#         institution:"Kagumo High School",
#         qualification:"High School Diploma",
#         profile_id:2
#     },
#     {

#         year_of_admission:2020,
#         year_of_completion:2020,
#         institution:"ICS College",
#         qualification:"Computer Packages Certificate",
#         profile_id:1
#     },
#     {

#         year_of_admission: 2020,
#         year_of_completion:"present",
#         institution:"Jomo Kenyatta University of Agriculture and Technology",
#         qualification:"Bachelor's Degree",
#         profile_id:2
#     },
#     {

#         year_of_admission: 2022,
#         year_of_completion:"present",
#         institution:"Moringa School",
#         qualification:"Certification",
#         profile_id:2
#     }
# ])
# #Opportunity

# opportunity1 = Opportunity.create!(
#     title:"Back End engineer",
#   employer_id: 1,
#   description: "We are looking for a Back-End Engineer to design and develop our SaaS platform that enables researchers to manage their experiments, run machine learning models, evaluate their performance,
#         and explore the rich sets of biological data. In this role, you will build maintainable and performant APIs and data pipelines to enrich and interact with data from over half a billion cells. You will work in an interdisciplinary team composed of data scientists, bioinformaticians, biologists, and software engineers to help solve hard problems that improve biological research and ultimately, health outcomes, across all of biology.",
#   cut_off: 7,
#   job_type: "Full-time",
#   qualifications: "Bachelor's degree in Computer Science or equivalent",
#   estimated_salary: "$100,000 - $120,000",
#   responsibilities: "Design, develop, and maintain software applications",
#   application_deadline: DateTime.new(2023, 4, 17, 23, 59, 59)
# )


# opportunity2 = Opportunity.create!(
#     title:"Finance Manager",
#   employer_id: 2,
#   description: " We are seeking a dynamic and experienced Finance Manager to join our team and play a crucial role in managing our financial operations and driving the company's financial performance.",
#   cut_off: 20,
#   job_type: "Full-time",
#   qualifications: "Bachelor's degree in Computer Science or equivalent",
#   estimated_salary: "$100,000 - $120,000",
#   responsibilities: "Design, develop, and maintain software applications",
#   application_deadline: DateTime.new(2023, 4, 17, 23, 59, 59)
# )
# opportunity3 = Opportunity.create!(
#     title:"UI/UX Designer",
#   employer_id: 1,
#   description: "The UI/UX Designer will be responsible for creating visually appealing and user-friendly interfaces for our digital products and services, with a focus on delivering exceptional user experiences. The successful candidate will work closely with cross-functional teams, including product managers, developers, and other stakeholders, to understand user requirements, conduct user research, design wireframes and prototypes, and implement intuitive and engaging user interfaces.",
#   cut_off: 5,
#   job_type: "Full-time",
#   qualifications: "Bachelor's degree in Computer Science or equivalent",
#   estimated_salary: "$100,000 - $120,000",
#   responsibilities: "Design, develop, and maintain software applications",
#   application_deadline: DateTime.new(2023, 4, 17, 23, 59, 59)
# )
# opportunity4 = Opportunity.create!(
# title:"Front-end Designer",
#   employer_id: 2,
#   description: "The successful candidate will work closely with cross-functional teams, including product managers, developers, and other stakeholders, to understand user requirements, conduct user research, design wireframes and prototypes, and implement intuitive and engaging user interfaces.",
#   cut_off: 3,
#   job_type: "Full-time",
#   qualifications: "Bachelor's degree in Computer Science or equivalent",
#   estimated_salary: "$100,000 - $120,000",
#   responsibilities: "Design, develop, and maintain software applications",
#   application_deadline: DateTime.new(2023, 4, 17, 23, 59, 59)
# )


# applications= Application.create!([{opportunity_id:1, profile_id:1},{opportunity_id:2, profile_id:1},{opportunity_id:1, profile_id:1},{opportunity_id:3, profile_id:2},{opportunity_id:4, profile_id:2}])

# tags=Tag.create!([{name:"ICT", slug:"ict"},{name:"Healthcare", slug:"healthcare"},{name:"Design", slug:"design"},{name:"Education", slug:"education"},{name:"Engineering", slug:"engineering"}])

# opportunitytags = OpportunityTag.create!([{tag_id:1, opportunity_id:3},{tag_id:2, opportunity_id:2},{tag_id:3, opportunity_id:1},{tag_id:4, opportunity_id:2},{tag_id:5, opportunity_id:4}])

# profiletags= ProfileTag.create!([{tag_id:1, profile_id:2},{tag_id:1, profile_id:1},{tag_id:3, profile_id:2},{tag_id:5, profile_id:1},{tag_id:2, profile_id:2}])
# puts "Done seeding"