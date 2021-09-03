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
    :email => "to@ku", 
    :password => "ieyasu",
    :color => "#469108"
    },
    {
    :user_name => "織田信長", 
    :email => "o@da", 
    :password => "nobunaga",
    :color => "#8a088c"
    },
    {
    :user_name => "豊臣秀吉", 
    :email => "to@yo", 
    :password => "hideyoshi",
    :color => "#d0ca0b"
    },
    {
    :user_name => "伊達政宗", 
    :email => "da@te", 
    :password => "masamune",
    :color => "#8a8a8a"
    },
    {
    :user_name => "武田信玄", 
    :email => "ta@ke", 
    :password => "shingen",
    :color => "#d93063"
    }
  ]
  )
  
  Schedule.create(
  [
    {
    :title => "織田", 
    :user_id => "1", 
    :content => "メインイベントでタイトルマッチ",
    :start_time => "2021-09-02 03:46:00"
      },
      {
    :title => "休館", 
    :user_id => "2", 
    :content => "器具メンテンスのため、この日はジム閉鎖します",
    :start_time => "2021-09-03"
      },
      {
    :title => "出稽古", 
    :user_id => "3", 
    :content => "さいたまスーパーアリーナで試合です",
    :start_time => "2021-09-12"
      },
      {
    :title => "豊臣", 
    :user_id => "1", 
    :content => "東京ドームで試合です",
    :start_time => "2021-09-19"
      },
      {
      :title => "ジム休み", 
    :user_id => "2", 
    :content => "クリーニングのため、この日はジム閉鎖します",
    :start_time => "2021-09-05 03:46:00"
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
    :content => "こちらこそ"
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
    :user_id => "1",
    :content => "おはようございます"
      },
      {
    :user_id => "2",
    :content => "天気がいいですね"
      },
      {
    :user_id => "4",
    :content => "スケジュール更新したので見てください"
      },
      {
    :user_id => "3",
    :content => "スケジュール更新したので見てください"
      },
      {
    :user_id => "5",
    :content => "スケジュール更新したので見てください"
      }
  
  ]
  )
