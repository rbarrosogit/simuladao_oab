class Topic < ApplicationRecord
  validate :title, presence: true
end
