def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.keys.each {|category|
    data[category].each {|(key, val)|
      count = 0
      while count < val.length do
        pigeon_name = val[count]
        if !pigeon_list.include?(pigeon_name)
          pigeon_list[pigeon_name] = {
            category => ["#{key.to_s}"]
          }
        else
          if pigeon_list[pigeon_name][category]
            pigeon_list[pigeon_name][category].push("#{key.to_s}")
          else 
             pigeon_list[pigeon_name][category] = ["#{key.to_s}"]
          end
        end
        count += 1
      end
    }
  }
  p pigeon_list
end
