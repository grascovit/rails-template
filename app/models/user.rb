# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, :phone_number,
            uniqueness: { case_sensitive: false },
            allow_blank: true
end
