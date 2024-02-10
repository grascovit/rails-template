# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def magic_link(user_id)
    @user = User.find(user_id)

    mail(to: @user.email, subject: t('.subject'))
  end
end
