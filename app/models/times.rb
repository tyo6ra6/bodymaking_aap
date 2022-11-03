class Times < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1回' },
    { id: 3, name: '2回' },
    { id: 4, name: '3回' },
    { id: 5, name: '4回' },
    { id: 6, name: '5回' },
    { id: 7, name: '6回' },
    { id: 8, name: '7回' },
    { id: 9, name: '8回' },
    { id: 10, name: '9回' },
    { id: 11, name: '10回' },
    { id: 12, name: '11回' },
    { id: 13, name: '12回' },
    { id: 14, name: '13回' },
    { id: 15, name: '14回' },
    { id: 16, name: '15回' },
    { id: 17, name: 'それ以上' },
    { id: 18, name: 'その他' },
    { id: 19, name: '--- 有酸素時間 ---' },
    { id: 20, name: '10分〜20分' },
    { id: 21, name: '20分〜30分' },
    { id: 22, name: '30分〜40分' },
    { id: 23, name: '40分〜50分' },
    { id: 24, name: '50分〜60分' },
    { id: 25, name: '1時間以上' }
  ]

  include ActiveHash::Associations
  has_many :records
end
