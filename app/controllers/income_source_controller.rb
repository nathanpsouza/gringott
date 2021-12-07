class IncomeSourceController < ApplicationController
  def index
    @income_sources = IncomeSource.all
  end
end
