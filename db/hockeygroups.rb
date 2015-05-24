       groups = (
          "Melville Toyota League Men 2015",
          "Melville Toyota League Women 2015",
          "Promotion 1 Men 2015"
          )

        groups.each do |group|
          Group.create!(groupname: group)
        end