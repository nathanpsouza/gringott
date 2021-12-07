# == Schema Information
#
# Table name: income_sources
#
#  id           :bigint           not null, primary key
#  amount       :decimal(10, 2)   not null
#  available_at :date
#  description  :string           not null
#  received_at  :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
FactoryBot.define do
  factory :income_source do
    description { Faker::Lorem.sentence }
    amount { Faker::Number.decimal }
  end
end
