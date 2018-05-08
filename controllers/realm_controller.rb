require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( '../models/realm.rb' )
require_relative( '../models/location.rb' )
require_relative( '../models/visit.rb' )

post '/realms/new' do
  Realm.new(params).save
  redirect to ("/realms")
end

get '/realms' do
  @realms = Realm.all
  erb ( :"realm/index" )
end

get '/realms/new' do
  @realms = Realm.all
  erb ( :"realm/new" )
end


post '/realms' do
  @realms = Realm.all
  redirect to("/realms")
end
