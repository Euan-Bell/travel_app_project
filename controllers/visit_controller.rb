require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( '../models/realm.rb' )
require_relative( '../models/location.rb' )
require_relative( '../models/visit.rb' )

get '/visits' do
  @visits = Visit.all
  erb ( :"visit/index" )
end

post '/visits' do
  @visit = Visit.new(params)
  @visit.save()
  redirect to('/visits')
end

get '/visits/new' do
  @locations = Location.all
  erb ( :"visit/new" )
end

post '/visits/:id/delete' do
  visit = Visit.find(params[:id])
  visit.delete
  redirect to("/visits")
end
