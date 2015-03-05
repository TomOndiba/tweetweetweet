User.destroy_all

User.create(
	first_name: 'Doug',
	last_name: 'Bryant',
	email: 'douglas.e.bryant@gmail.com',
	location: 'Raleigh',
	handle: 'dojodoug',
	password: 'supersecret',
	password_confirmation: 'supersecret'
	)

5.times do 
	User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: Faker::Internet.email,
		location: Faker::Address.city,
		handle: Faker::Internet.user_name(nil, []),
		password: 'supersecret',
		password_confirmation: 'supersecret'
	)
end