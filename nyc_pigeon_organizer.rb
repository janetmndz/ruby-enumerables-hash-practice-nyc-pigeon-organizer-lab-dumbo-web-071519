def nyc_pigeon_organizer(data)
  data.keys.reduce({}) {|memo, category|
    data[category].each{|(key, val)|
      
      count = 0
      p val
      while count < val.length do
        
        ### variable for readability
        pigeon_name = val[count] 
        
        if !memo.include?(pigeon_name)
          memo[pigeon_name] = {
            category => ["#{key.to_s}"]
          }
        else
          memo_p = memo[pigeon_name][category]
          
          memo_p ? memo_p.push("#{key.to_s}") : memo_p = ["#{key.to_s}"]
        end
        count += 1
      end
    }
    p memo
  }
end
