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



recs.each_with_index do |rec,i|
  print %Q[<img src="../num/#{rec['num']}.png" alt="Trooper ##{i} - Inscribe № #{rec['num']}" width="10%">]
end


puts
puts
puts "bye"

