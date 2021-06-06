Before '@startup' do
    @name = Faker::Company.name
    @city = Faker::Address.city

    @body = {
        name: @name,
        city: @city
    }.to_json

    @startup = Startup.new(@body)
end

