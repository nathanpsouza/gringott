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
require 'rails_helper'

RSpec.describe IncomeSource, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:amount) }
    it { is_expected.to validate_numericality_of(:amount) }
    it { is_expected.to validate_presence_of(:description) }
  end
end
