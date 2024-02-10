# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, presence: true, format: URI::MailTo::EMAIL_REGEXP
  validates :phone_number,
            uniqueness: { case_sensitive: false },
            allow_blank: true

  def magic_link_token
    JWT.encode({ user_id: id, exp: 30.minutes.from_now.to_i }, ENV.fetch('JWT_SECRET', nil))
  end
end
