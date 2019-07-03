def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.keys.each {|category|
    p category ### returns color/gender/
    data[category].each {|(key, val)|
      p key
      p val
    }
  }
end
