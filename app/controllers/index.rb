get '/' do
  haml :index
end

post '/brewery' do
	create_brew_ftable
	breweries_by_city = brewery_db_paserser(params[:location])
	generate_fusion_table(breweries_by_city)
	haml :map
end


get '/map' do
	haml :map
end