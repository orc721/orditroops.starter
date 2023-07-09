####
#  to run use
#    $ ruby sandbox/fam.rb


require 'cocos'

max = 25

## step 2 - read mint records
recs = read_csv( "./diyorditroops/mint.csv" )
puts "   #{recs.size} record(s)"

## cut-down to max. limit
recs = recs[0, max]
puts "   #{recs.size} record(s)"


## (lookup) mapping (table) ord num to ord id
mapping = read_csv( "./sandbox/diyorditroops_ids.csv" ).reduce( {} ) do |mapping, rec|
                                         mapping[rec['num']] = rec['id']
                                         mapping
                                    end


recs.each_with_index do |rec,i|
  num = rec['num']
  id  = mapping[ num ]
  if id.nil?
    puts "!! error - no inscribe num to inscribe id mapping found for:"
    pp rec
    exit 1
  end

  print %Q[<a href="https://ordinals.com/inscription/#{id}" title="Trooper ##{i} - Inscribe № #{num}">]
  print %Q[<img src="../num/#{num}.png" width="10%">]
  print %Q[</a>]
end


puts
puts
puts "bye"

