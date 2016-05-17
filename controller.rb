require( 'sinatra' )
require( 'pry-byebug' )
require( 'json' )
require( 'sinatra/contrib/all' ) if development?
require( './models/word_formatter' )

#localhost:4567/

get '/' do
  erb :home
end

get '/about_us' do
  erb :about_us
end

get '/address' do
  content_type( :json )

  word_formatter = WordFormatter.new( )
    postcode = word_formatter.upcase_that_thing( 'eh8 7ad' )

  return json( { :address => '3 argyle house', :building => 'codebase', :postcode => postcode } )
end

get '/camel/:input' do
  word_formatter = WordFormatter.new(  )
    return word_formatter.camel_case( params[ :input ] )
end
