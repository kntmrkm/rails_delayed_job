class Book < ApplicationRecord
  validate :dummy_validate

  private

  def dummy_validate
    errors.add(:base, 'error')
    TestBookJob.perform_later
  end
end
