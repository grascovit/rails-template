# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it { is_expected.to validate_uniqueness_of(:phone_number).case_insensitive }
  end

  describe '#magic_link_token' do
    before do
      allow(ENV).to receive(:fetch).with('JWT_SECRET', nil).and_return('secret')
    end

    it 'returns a JWT token' do
      user = create(:user)
      token = user.magic_link_token
      decoded_token = JWT.decode(token, 'secret', true, algorithm: 'HS256').first

      expect(decoded_token['user_id']).to eq(user.id)
    end
  end
end
