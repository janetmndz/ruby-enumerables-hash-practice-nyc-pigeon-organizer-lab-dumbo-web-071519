def nyc_pigeon_organizer(data)
  data.keys.reduce({}) {|memo, category|
    p category
    p memo
  }
end
