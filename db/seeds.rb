 User.create!(name:  "Example User",
             email: "example@example.com",
             password:              "iamsmart",
             password_confirmation: "iamsmart",
             admin: true,
           )

    User.create!(name:  "test User",
             email: "test@test.com",
             password:              "iamsmart",
             password_confirmation: "iamsmart",
             admin: false,
           )
    
      Listing.create!(venue:  "UWA Field #2",
             gamedate: "2015-05-21",
             gametime:  "2015-05-21 19:00:00",
             created_by: 1,
             group: 1,
           )

        Listing.create!(venue:  "UWA Field #1",
             gamedate: "2015-03-21",
             gametime:  "2015-02-21 9:00:00",
             created_by: 2,
             group: 90,
           )

          groups = [
            'Promotion 1 Women ',
            'Premier 2 Men ',
            'Premier 2 Women ',
            'Promotion 2 Men ',
            'Promotion 2 Women ',
            'Premier Alliance Men ',
            'Premier Alliance Women ',
            'Provisional 1 Men ',
            'Provisional 1 Women ',
            'Provisional 2 (Black) Men ',
            'Provisional 2 (Gold) Men ',
            'Provisional 2 (Black) Women ',
            'Provisional 2 (Gold) Women ',
            'Provisional 3 (Black) Men ',
            'Provisional 3 (Gold) Men ',
            'Provisional 3 (Black) Women ',
            'Provisional 3 (Gold) Women ',
            'Provisional 4 (Black) Men ',
            'Provisional 4 (Gold) Men ',
            'Provisional 4 (Black) Women ',
            'Provisional 4 (Gold) Women ',
            'Metropolitan 1 Men ',
            'Metropolitan 1 Women ',
            'Metropolitan 2 Men ',
            'Metropolitan 2 (Black) Women ',
            'Metropolitan 2 (Gold) Women ',
            'Metropolitan 3 (Black) Men ',
            'Metropolitan 3 (Gold) Men ',
            'Metropolitan 3 (Black) Women ',
            'Metropolitan 3 (Gold) Women ',
            'Metropolitan 4 Men ',
            'O40 Division 1 Men ',
            'O40 Division 2 Men ',
            'O40 Division 3 Men ',
            'O40 Division 4 Men ',
            'O50 Division 1 Men ',
            'O50 Division 2 (Black) Men ',
            'O50 Division 2 (Gold) Men ',
            'O50 Division 3 Men ',
            'O60 Division Men ',
            'O40 Midweek Division ',
            'Rae Blunt Pennant ',
            'O35 Division 2 Women ',
            'O35 Division 3 Women ',
            'O35 Division 4 Women ',
            'J 11/12 A Boys ',
            'J 11/12 A Girls ',
            'J 11/12 A Promotion Boys ',
            'J 11/12 A Reserve Boys ',
            'J 11/12 A Promotion Girls ',
            'J 11/12 A Reserve Girls ',
            'J 11/12 B Boys ',
            'J 11/12 B Girls ',
            'J 9/10 A Boys ',
            'J 9/10 A Girls ',
            'J 9/10 A Promotion Boys ',
            'J 9/10 A Reserve Boys ',
            'J 9/10 A Promotion Girls ',
            'J 9/10 A Reserve Girls ',
            'J 9/10 B (Black) Boys ',
            'J 9/10 B (Gold) Boys ',
            'J 9/10 B (Black) Girls ',
            'J 9/10 B (Gold) Girls ',
            'J 9/10 C Boys ',
            'J 7/8 A Boys ',
            'J 7/8 A Girls ',
            'J 7/8 A Promotion Boys ',
            'J 7/8 A Reserve Boys ',
            'J 7/8 A Promotion Girls ',
            'J 7/8 A Reserve Girls ',
            'J 7/8 B (Black) Boys ',
            'J 7/8 B (Gold) Boys ',
            'J 7/8 B (White) Boys ',
            'J 7/8 B (Black) Girls ',
            'J 7/8 B (Gold) Girls ',
            'J 7/8 C Boys ',
            'J 7/8 C Girls ',
            'J 5/6 A Boys ',
            'J 5/6 A Girls ',
            'J 5/6 A Promotion Boys ',
            'J 5/6 A Reserve Boys ',
            'J 5/6 A Reserve Girls ',
            'J 5/6 B (Black) Boys ',
            'J 5/6 B (Gold) Boys ',
            'J 5/6 B (White) Boys ',
            'J 5/6 B (Sand) Boys ',
            'J 5/6 B (Black) Girls ',
            'J 5/6 B (Gold) Girls ',
            'J 5/6 C (Black) Boys ',
            'J 5/6 C (Gold) Boys ',
            'J 5/6 C Girls ',
          ]

        groups.each do |group|
          Group.create!(groupname: group)
        end