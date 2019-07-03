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
          if memo[pigeon_name][category]
            memo[pigeon_name][category].push("#{key.to_s}")
          else 
             memo[pigeon_name][category] = ["#{key.to_s}"]
          end
        end
        count += 1
      end
    }
    p memo
  }
end
