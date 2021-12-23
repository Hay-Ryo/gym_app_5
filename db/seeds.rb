# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  [
    {
    :user_name => "徳川家康", 
    :email => "tokugawa@ieyasu", 
    :password => "ieyasu",
    :color => "#469108"
    },
    {
    :user_name => "織田信長", 
    :email => "oda@nobunaga", 
    :password => "nobunaga",
    :color => "#8a088c"
    },
    {
    :user_name => "豊臣秀吉", 
    :email => "toyotomi@hideyoshi", 
    :password => "hideyoshi",
    :color => "#d0ca0b"
    },
    {
    :user_name => "伊達政宗", 
    :email => "date@masamune", 
    :password => "masamune",
    :color => "#8a8a8a"
    },
    {
    :user_name => "毛利元就", 
    :email => "mohri@motonari", 
    :password => "motonari",
    :color => "#b7811e"
    },
    {
    :user_name => "前田利家", 
    :email => "maeda@toshiie", 
    :password => "toshiie",
    :color => "#a29a35"
    },
    {
    :user_name => "真田幸村", 
    :email => "sanada@yukimura", 
    :password => "yukimura",
    :color => "#e41f56"
    },
    {
    :user_name => "武田信玄", 
    :email => "takeda@shingen", 
    :password => "shingen",
    :color => "#d93063"
    },
    {
    :user_name => "上杉謙信", 
    :email => "uesugi@kenshin", 
    :password => "kenshin",
    :color => "#6e75d2"
    },
    {
    :user_name => "直江兼続", 
    :email => "naoe@kanetsugu", 
    :password => "kanetsugu",
    :color => "#b9a9a9"
    }
  ]
  )
  
  Schedule.create(
  [
    {
    :title => "織田試合", 
    :user_id => "1", 
    :content => "メインイベントでタイトルマッチ",
    :start_time => "2021-12-02 03:46:00"
    },
    {
    :title => "休館", 
    :user_id => "2", 
    :content => "メンテンスのため、この日はジム閉鎖します",
    :start_time => "2021-12-03 "
    },
    {
    :title => "出稽古", 
    :user_id => "3", 
    :content => "さいたまスーパーアリーナで試合です",
    :start_time => "2021-12-12 19:00:00"
    },
    {
    :title => "豊臣試合", 
    :user_id => "1", 
    :content => "東京ドームで試合です",
    :start_time => "2021-12-19 20:00:00"
    },
    {
    :title => "試合", 
    :user_id => "1", 
    :content => "後楽園ホールで試合です",
    :start_time => "2021-12-20 19:30:00"
    },
    {
    :title => "試合", 
    :user_id => "3", 
    :content => "東京ドームで試合です",
    :start_time => "2021-12-31 19:00:00"
    },
    {
    :title => "会議", 
    :user_id => "1", 
    :content => "東京ドームで試合です",
    :start_time => "2021-12-28 10:30:00"
    },
    {
    :title => "会議", 
    :user_id => "2", 
    :content => "東京ドームで試合です",
    :start_time => "2021-12-29 10:30:00"
    },
    {
    :title => "(仮)試合", 
    :user_id => "1", 
    :content => "まだ決定ではないですが、徳川の試合です",
    :start_time => "2021-12-07"
    },
    {
    :title => "ジム休み", 
    :user_id => "2", 
    :content => "クリーニングのためお休みです",
    :start_time => "2021-12-05 03:46:00"
    }
  ]
  )
  
  Message.create(
  [
    {
    :user_id => "1",
    :content => "今日もよろしくお願いします"
    },
    {
    :user_id => "2",
    :content => "こんばんは"
    },
    {
    :user_id => "3",
    :content => "ありがとうございます"
    },
    {
    :user_id => "4",
    :content => "こんにちは"
    },
    {
    :user_id => "5",
    :content => "頑張りましょう"
    },
    {
    :user_id => "6",
    :content => "おはようございます"
    },
    {
    :user_id => "7",
    :content => "天気がいいですね"
    },
    {
    :user_id => "8",
    :content => "スケジュール更新したので見てください"
    },
    {
    :user_id => "9",
    :content => "ありがとうございます"
    },
    {
    :user_id => "10",
    :content => "よろしくお願いします"
    }
  
  ]
  )

  Attend.create(
  [
    {
    :user_id => "1",
    :user_name => "徳川家康",
    :start_time => "2021-12-05 11:46:00"
    },
    {
    :user_id => "1",
    :user_name => "徳川家康",
    :start_time => "2021-12-06 11:46:00"
    },
    {
    :user_id => "1",
    :user_name => "徳川家康",
    :start_time => "2021-12-07 11:46:00"
    },
    {
    :user_id => "1",
    :user_name => "徳川家康",
    :start_time => "2021-12-08 11:46:00"
    },{
    :user_id => "1",
    :user_name => "徳川家康",
    :start_time => "2021-12-09 11:46:00"
    },{
    :user_id => "1",
    :user_name => "徳川家康",
    :start_time => "2021-12-11 11:46:00"
    },
    {
    :user_id => "2",
    :user_name => "織田信長",
    :start_time => "2021-12-13 19:19:00"
    },
    {
    :user_name => "豊臣秀吉",
    :user_id => "3",
    :start_time => "2021-12-05 19:48:00"
    },
    {
    :user_name => "豊臣秀吉",
    :user_id => "3",
    :start_time => "2021-12-06 11:46:00"
    },
    {
    :user_name => "豊臣秀吉",
    :user_id => "3",
    :start_time => "2021-12-07 21:00:00"
    },
    {
    :user_name => "豊臣秀吉",
    :user_id => "3",
    :start_time => "2021-12-08 17:00:00"
    },
    {
    :user_name => "真田幸村",
    :user_id => "7",
    :start_time => "2021-12-08 17:00:00"
    },
    {
    :user_name => "真田幸村",
    :user_id => "7",
    :start_time => "2021-12-10 17:00:00"
    },
    {
    :user_name => "真田幸村",
    :user_id => "7",
    :start_time => "2021-12-15 17:00:00"
    },
    {
    :user_name => "真田幸村",
    :user_id => "7",
    :start_time => "2021-12-23 17:00:00"
    },
    {
    :user_name => "真田幸村",
    :user_id => "7",
    :start_time => "2021-12-25 17:00:00"
    },
    {
    :user_name => "上杉謙信",
    :user_id => "9",
    :start_time => "2021-12-21 18:46:00"
    },
    {
    :user_name => "上杉謙信",
    :user_id => "9",
    :start_time => "2021-12-23 19:00:00"
    },
    {
    :user_name => "上杉謙信",
    :user_id => "9",
    :start_time => "2021-12-28 19:30:00"
    },
    {
    :user_name => "上杉謙信", 
    :user_id => "9",
    :start_time => "2021-12-30 20:00:00"
    }
  ]
  )
