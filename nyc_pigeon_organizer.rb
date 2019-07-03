def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.keys.each {|category|
    #p category ### returns color/gender/lives
    data[category].each {|(key, val)|
      #p key ## returns sub categories
      #p val ## returns array
      
      count = 0
      while count < val.length do
        pigeon_name = val[count]
        if !pigeon_list.include?(pigeon_name)
          pigeon_list[pigeon_name] = {
            category => ["#{key.to_s}"]
          }
        else
          p "inside else"
          if pigeon_list[pigeon_name][category]
            pigeon_list[pigeon_name][category].push("#{key.to_s}")
          else 
             pigeon_list[pigeon_name][category] = ["#{key.to_s}"]
          end
          p pigeon_list
          p "end inside"
        end
        count += 1
      end
    }
  p pigeon_list
  }
end
