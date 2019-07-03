def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.keys.each {|category|
    data[category].each {|(key, val)|
      p key
      p val
    }
  }
end
