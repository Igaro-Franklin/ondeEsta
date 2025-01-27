class Produto < ApplicationRecord
  validates :nome, presence: true
  validates :corredor, presence: true
end
