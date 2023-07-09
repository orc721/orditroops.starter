#####
#  generate images for mint indexed by inscription ids
##    for ordinals wallet et al
#
#  to run use:
#    $ ruby sandbox/images.rb


require 'ordgen'




## step 1 - read (local) spritesheet.png ("art layers")
diyorditroops = Ordgen.read( './preview/spritesheet.png',
                                        width: 496,
                                        height: 500 )



recs = read_csv( "./diyorditroops/mint.csv" )
## cut-off "cursed" overflow "negatives" if any
# recs = recs[0, max]    

puts "   #{recs.size } mint record(s)"



## (lookup) mapping (table) ord num to ord id
mapping = read_csv( "./sandbox/diyorditroops_ids.csv" ).reduce( {} ) do |mapping, rec|
                                         mapping[rec['num']] = rec['id']
                                         mapping
                                    end

## pp mapping



recs.each_with_index do |rec,i|

   num = rec['num']
   id = mapping[ num ]
   if id.nil?
     puts "!! error - no inscribe num to inscribe id mapping found for:"
     pp rec
     exit 1
   end

   puts "==> #{i} - #{id} ..."

   g = diyorditroops._parse( rec['g'] )
   img = diyorditroops.generate( *g )

   img.save( "./content/#{id}.png" )
end

puts 'bye'
