Given("the application is available") do
    response = RestClient.get "#{ENV['GALAXY_URL']}/"
    expect(JSON.parse(response)['service'])
    .to eq('galaxy')
end
