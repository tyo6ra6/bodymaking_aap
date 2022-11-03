class TrainingEvent < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '--- 胸 ---' },
    { id: 3, name: 'ベンチプレス' },
    { id: 4, name: 'チェストプレス' },
    { id: 5, name: 'ダンベルフライ' },
    { id: 6, name: 'その他' },
    { id: 7, name: '--- 背中 ---' },
    { id: 8, name: 'ラットプルダウン' },
    { id: 9, name: 'デッドリフト' },
    { id: 10, name: 'チンニング（懸垂）' },
    { id: 11, name: 'その他' },
    { id: 12, name: '--- 脚 ---' },
    { id: 13, name: 'スクワット' },
    { id: 14, name: 'レッグプレス' },
    { id: 15, name: 'レッグエクステンション' },
    { id: 16, name: 'その他' },
    { id: 17, name: '--- 肩 ---' },
    { id: 18, name: 'サイドレイズ' },
    { id: 19, name: 'ショルダープレス' },
    { id: 20, name: 'フロントレイズ' },
    { id: 21, name: 'その他' },
    { id: 22, name: '--- 腕 ---' },
    { id: 23, name: 'アームカール' },
    { id: 24, name: 'その他' },
    { id: 25, name: '--- 有酸素 ---' },
    { id: 26, name: 'トレッドミル' },
    { id: 27, name: 'エアロバイク' },
    { id: 28, name: 'クロストレーナー' },
    { id: 29, name: 'その他' },
    { id: 30, name: '--- その他の種目---' },
    { id: 31, name: 'その他の種目' }
  ]

  include ActiveHash::Associations
  has_many :records
end
