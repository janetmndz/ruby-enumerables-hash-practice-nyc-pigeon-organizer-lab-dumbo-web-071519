def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.keys.each {|category|
    data[category].each {|category_id|
      p category_id
    }
  }
end
