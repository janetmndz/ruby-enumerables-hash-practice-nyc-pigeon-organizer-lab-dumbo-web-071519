def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.keys.each {|category|
    #p category ### returns color/gender/lives
    data[category].each {|(key, val)|
      #p key ## returns sub categories
      #p val ## returns array
      count = 0
      while count < val.length do
        if !pigeon_list.include?(val[count])
          pigeon_name = pigeon_list[val[count]]
          pigeon_name = {
            category => [ key.to_s ]
          }
        else
          pigeon_name[category] = pigeon_name[category] ? pigeon_name[category].push(key.to_s) : [ key.to_s ]
        end 
        count += 1
      end
      p pigeon_list
    }
  p pigeon_list
  }
end
