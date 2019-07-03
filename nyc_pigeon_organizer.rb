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
          pigeon_list[val[count]] = {
            category => [ key.to_s ]
          }
        else
          pigeon_list[val[count]][category] = pigeon_list[val[count]][category] ? pigeon_list[val[count]][category] += key.to_s : key.to_s
        end 
        count += 1
      end
      p pigeon_list
    }
  p pigeon_list
  }
end
