class Record < ApplicationRecord

  belongs_to :user
  has_one_attached :image
  has_many :favorites, dependent: :destroy
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :training_site
  belongs_to :training_event
  belongs_to :times
  belongs_to :set_count

 
  
  validates :days, presence: true
  validates :weight, presence: true
  validates :image, presence: true

  validates :training_site_id, numericality: { other_than: 1, message: "を選択してください" }
  validates :training_event_id, numericality: { other_than: 1, message: "を選択してください" }
  validates :times_id, numericality: { other_than: 1, message: "を選択してください" }
  validates :set_count_id, numericality: { other_than: 1, message: "を選択してください" }
 
 


end
