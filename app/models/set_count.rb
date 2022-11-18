class SetCount < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1セット' },
    { id: 3, name: '2セット' },
    { id: 4, name: '3セット' },
    { id: 5, name: '4セット' },
    { id: 6, name: '5セット' },
    { id: 7, name: '6セット' },
    { id: 8, name: '7セット' },
    { id: 9, name: '8セット' },
    { id: 10, name: '9セット' },
    { id: 11, name: '10回セット' },
    { id: 12, name: 'それ以上' }

  ]

  include ActiveHash::Associations
  has_many :records
end
