# Get the current server status

require '/home/islador/eveTools/icras/eve/lib/eve'

#require '/home/islador/.rvm/gems/ruby-2.1.1@Ananke/bundler/gems/eve-9efacae3ec83'
#puts "Require fired"


api = Eve::API.new()

#Character API
#$key_idchar = '3226804'
#$v_codechar = "6RQKaARz8EoY5Fd7iqALsoneTdMEM36fg7xwpMefhsxCOVMfF60YvNzprxp6p7kc"

#corporation API
$key_id = "3229801"
$v_code = "UyO6KSsDydLrZX7MwU048rqRiHwAexvLmSQgtiUbN0rIrVaUuGUZYmGuW2PkMSg1"
#puts "api made"

#server_status = api.server_status
#puts "server_status made"

#puts "Server reports status #{server_status.server_open ? "ONLINE" : "OFFLINE"}"
#puts "\tCurrent time is #{server_status.current_time}"
#puts "\t#{server_status.online_players} players currently online"
#puts

api = Eve::API.new(:key_id => $key_id, :v_code => $v_code)
puts "Api Set"
result = api.corporation.contact_list
puts "call made"

puts result.corporateContactList
#puts result
#.contactID.each do |k|
#    puts k.contactName
#end
#puts "Server reports status #{server_status.server_open ? "ONLINE" : "OFFLINE"}"
#puts "\tCurrent time is #{server_status.current_time}"
#puts "\t#{server_status.online_players} players currently online"
#puts

#result.characters.each do |k|
#    puts k
#end
#api.set(:character_id => 601261354)
#result = api.character.wallet_transactions
#result.transactions.each do |sta|
#    puts sta.transactionDateTime
#end


#division_array = []
#api.set(:corporation_id => 1416434476)
#puts "Corporation_id set"
#result = api.corporation.corporation_sheet
#puts "result set"
#puts result.wallet_divisions.length
#result.wallet_divisions.each do |d|
#    division_array.push(d.description)
#end
#division_hash = {:wallet_0 => nil, :wallet_1 => nil, :wallet_2 => nil, :wallet_3 => nil, :wallet_4 => nil, :wallet_5 => nil, :wallet_6 => nil}
#division_hash[:wallet_0] = "Master"
#division_hash[:wallet_1] = result.wallet_divisions[1].description
#division_hash[:wallet_2] = result.wallet_divisions[2].description
#division_hash[:wallet_3] = result.wallet_divisions[3].description
#division_hash[:wallet_4] = result.wallet_divisions[4].description
#division_hash[:wallet_5] = result.wallet_divisions[5].description
#division_hash[:wallet_6] = result.wallet_divisions[6].description


#puts division_hash

result.characters.each do |c|

    puts c.characterID.to_s + " " + c.name + " " + c.corporationID.to_s + " " + c.corporationName
end
    #result.characters.each { |char| puts char.name}
#api.set(:character_id => c.character_id)
#puts "Character #{c.name}, ID: #{c.character_id} set."

#end

#charidresult = api.character.market_orders
#charidresult.orders.each { |order| puts order.orderID}
#api.set( :character_id => result.characters[0].character_id)#
#puts "set character ID"
#result = api.corporation.market_orders
#result.orders.each { |order| corparray.push(order.orderID)}
#derp = []
#result.orders.each { |meow| derp.push(meow)}
#puts result.orders.count
#puts derp.count
#temphash = {"user_id" => nil, "api_id" => nil, "market_summary_id" => nil, "order_id" => nil, "char_id" => nil, "station_id" => nil, "vol_entered" => nil, "vol_remaining" => nil, "min_volume" => nil, "order_state" => nil, "type_id" => nil, "reach" => nil, "account_key" => nil, "duration" => nil, "escrow" => nil, "price" => nil, "bid" => nil, "issued" => nil }
#derp.each do |o|
#   temphash["order_id"] = o.orderID
#   temphash["char_id"] = o.charID
#   temphash["station_id"] = o.stationID
#   temphash["vol_entered"] = o.volEntered
#   temphash["vol_remaining"] = o.volRemaining
#   temphash["min_volume"] = o.minVolume
#   temphash["order_state"] = o.orderState
#   temphash["type_id"] = o.typeID
#   temphash["reach"] = o.range
#   temphash["account_key"] = o.accountKey
#   temphash["duration"] = o.duration
#   temphash["escrow"] = o.escrow
#   temphash["price"] = o.price
#   temphash["bid"] = o.bid
#   temphash["issued"] = o.issued
#
#   puts temphash
#end
#puts temphash


#  user_id           :integer
#  api_id            :integer
#  market_summary_id :integer
#  order_id          :integer
#  station_id        :integer
#  vol_entered       :integer
#  vol_remaining     :integer
#  min_volume        :integer
#  order_state       :integer
#  type_id           :integer
#  reach             :integer
#  account_key       :integer
#  duration          :integer
#  escrow            :decimal(, )
#  price             :decimal(, )
#  bid               :boolean
#  issued            :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  char_id 
#derp.each { |a| puts a }
#derp.push(result.orders)
#puts derp.each

#charresult = api.account.characters
#api.set( :character_id => charresult.characters[1].character_id)
#puts "Character ID Selected"
#charresult = api.character.market_orders
#puts "Selected Character Orders"
#characterarray = []
#puts "Comparisson Array declared"
#charresult.orders.each { |charorders| characterarray.push(charorders.orderID)}
#puts "Comparison Array loaded"
#characterarray.each { |a| puts a}


#api = Eve::API.new(:key_id => $key_idchar, :v_code => $v_codechar)
#puts "Api Loaded"
#result = api.account.apikeyinfo
#puts "API Key Info API Selected"
#mask = []
#masks = [71307264, 10489856]

#if masks.include?(result.key.accessMask)
#   puts result.key.accessMask.to_s + " Matches one of the specified keys."
#   if result.key.accessMask == masks[0]
#       puts "Entity: Character"
#   else
#       puts "Entity: Corporation"
#   end
#else
#   puts result.key.accessMask.to_s + " Does not match one of the specified keys."
#end
# Functional block
#if result.key.accessMask == 71307264 || result.key.accessMask == 10489856
#   puts result.key.accessMask.to_s + " matches one of the specified keys."
#else
#   puts result.key.accessMask.to_s + " does not match one of the specified keys."
#end

    # Functional block
    #if result.key.accessMask == 71307264 
    #  puts result.key.accessMask.to_s + " matches one of the specified keys."
    #else if result.key.accessMask == 10489856
    #   puts result.key.accessMask.to_s + " matches one of the specified keys."
    #else
    #  puts result.key.accessMask.to_s + "You have not configured the API correctly."
    #end end

#puts result.key.accessMask
#puts result.key.type
#puts result.key.expires
#puts "Character API Made"
#charresult = api.account.characters
#api.set( :character_id => charresult.characters[1].character_id)
#puts "Character ID Selected"
#charresult = api.character.market_orders
#puts "Selected Character Orders"
#characterarray = []
#puts "Comparisson Array declared"
#charresult.orders.each { |charorders| characterarray.push(charorders.orderID)}
#puts "Comparison Array loaded"
#characterarray.each { |a| puts a}


#Get a list of characters
#api = Eve::API.new(:key_id => $key_id, :v_code => $v_code)
#puts "api made"
#result = api.account.characters
#puts "Choose a character:"
#result.characters.each { |char| puts char.name}

#_with_index { |char, index| puts "\t#{index}: #{char.name} (#{char.character_id})" }
#choice = gets.chomp.to_i
#puts result.characters.to_s

#api.set( :character_id => result.characters[0].character_id)
#puts "set character ID"
#result = api.corporation.market_orders
#corparray = []
#puts "Corp array declared"
#result.orders.each { |order| corparray.push(order.orderID)}
#puts "Corp array loaded"

#matcharray = []
#puts "Match array declared"
#corparray.each do |b|
#   characterarray.each do |a|
#       if a == b
#           puts b.to_s + "==" + a.to_s
#           matcharray.push(a)
#           matcharray.push(b)
#       else
#           puts a.to_s + "!=" + b.to_s
#       end
#   end
#end
#puts "Matching complete."
                

    #if order.orderID == characterarray.each then puts order.orderID else if 
        #order.orderID != characterarray.each then puts order.orderID.to_s + " !=  " + characterarray.each.to_s end end}

#result = api.character.account_balance(:char => islador)
#puts result
#result = api.account.characters
#puts "Choose a character:"
#result.characters.each_with_index { |char, index| puts "\t#{index}: #{char.name} (#{char.character_id})" }
#choice = gets.chomp.to_i
#puts
#
# Get the current training queue. Need a full API key and a character ID for that.
#api.set(:api_key => $full_api_key, :character_id => result.characters[choice].character_id)
#result = api.character.skill_queue
#result.skillqueue.each do |skill|
#  result.skillqueue.columns.each do |column|
#    print column.ljust(20), ":\t", skill[column], "\n"
#  end
#  puts
#end
