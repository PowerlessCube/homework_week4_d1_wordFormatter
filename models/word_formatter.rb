class WordFormatter

  def initialize( params )
    @address = params[ '3 argyle house' ].to_s
    @building = params[ 'code base' ].to_s
    @postcode = params[ 'e13 zqf' ].to_s
    @phone = params[ '0131 558030' ].to_i
  end

end
