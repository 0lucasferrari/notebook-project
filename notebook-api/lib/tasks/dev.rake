namespace :dev do
  desc "Set the development enviroment up"
  task setup: :environment do
    puts "Cadastrando os contatos..."
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(from: 35.years.ago, to: 18.years.ago),
      )
    end
    puts "Contatos cadastrados com sucesso"
  end

end
