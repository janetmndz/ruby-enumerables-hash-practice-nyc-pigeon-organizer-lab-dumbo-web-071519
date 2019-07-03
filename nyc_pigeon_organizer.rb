def nyc_pigeon_organizer(data)
  data.keys.reduce({}) {|memo, category|
    data[category].each{|(key, val)|
      val.each{|name|
        p name
      }
    }
    p memo
  }
end
