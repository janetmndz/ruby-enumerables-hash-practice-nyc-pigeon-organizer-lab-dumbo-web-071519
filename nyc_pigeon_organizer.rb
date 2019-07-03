def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.keys.each {|category|
    p data[category] ### this returns either color/gender/lives
    p data[":#{category}"]
  }
end
