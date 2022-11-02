FactoryBot.define do
  factory :user do
    nickname              { 'ヒデ' }
    email                 { 'test@com' }
    password              { '1234567' }
    password_confirmation { password }
    sex_id                { 2 }
    generation_id         { 2 }
    height                { '175' }
  end
end
