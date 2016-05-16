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

  word_formatter = WordFormatter.new(
    params[ :address ].to_s,
    params[ :building ].to_s,
    params[ :postcode ].to_s,
    params[ :phone ].to_s
  )
  result = {
    address: word_formatter.address,
  }

  return result.to_json

end
