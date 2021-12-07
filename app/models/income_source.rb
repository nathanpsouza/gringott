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
class IncomeSource < ApplicationRecord
  validates :amount, presence: true, numericality: true
  validates :description, presence: true
end
