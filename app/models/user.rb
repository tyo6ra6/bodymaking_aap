class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :records
         has_many :favorites, dependent: :destroy


       
      

         extend ActiveHash::Associations::ActiveRecordExtensions
         belongs_to :sex
         belongs_to :generation
         
         validates :nickname, presence: true
         validates :height, presence: true
         validates :sex_id, numericality: { other_than: 1 } 
         validates :generation_id, numericality: { other_than: 1 } 
end
