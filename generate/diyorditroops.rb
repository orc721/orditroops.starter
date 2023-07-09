####
#  to run use
#    $ ruby generate/diyorditroops.rb

require 'ordgen'



## step 1 - read (local) spritesheet.png ("art layers")
diyorditroops    = Ordgen.read( './preview/spritesheet.png',
                                        width: 496,
                                        height: 500 )



## step 2 - read mint records
recs = read_csv( "./diyorditroops/mint.csv" )
puts "   #{recs.size} record(s)"

# cut-down to max. limit
# recs = recs[0, 25]
# puts "   #{recs.size} record(s)"


## step 3 - auto-generate public images
recs.each_with_index do |rec,i|
  num = rec['num']
  g   = diyorditroops._parse( rec['g'] )

  puts "==> trooper no. #{i} @ #{num} - g: #{g.inspect}"

  img = diyorditroops.generate( *g )

  img.save( "./num/#{num}.png" )
  
end


puts "bye"

