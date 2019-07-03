def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.keys.each {|category|
    p category ### returns color/gender/lives
    data[category].each {|(key, val)|
      p key ## returns sub categories
      p val ## returns array
      count = 0
      while count < val.length do
        if !pigeon_list.include?(val[count])
          pigeon_list[val[count]] = {
            category => 
          }
        end 
        count += 1
      end
    }
  }
end
