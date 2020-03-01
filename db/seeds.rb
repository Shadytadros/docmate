
User.create(email: "shadymtadros@hotmail.com", :password => 'topsecret', :password_confirmation => 'topsecret')
20.times do
  Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    user_id: 1
  )
end

30.times do
  Appointment.create(
    time: Faker::Time.forward(days: rand(0..10), period: :morning),
    patient_id: rand(0..20)
  )
end
