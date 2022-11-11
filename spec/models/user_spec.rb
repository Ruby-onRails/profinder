require 'rails_helper'

RSpec.describe User, type: :model do
  context 'When Creating User ...' do
    let(:user) { build :user }
    let(:user1) { create :user, state: nil }

    it 'should be valid user with all attribute' do
      expect(user.valid?).to eq(true)
    end
    it 'Should have country as state if state nil' do
      expect(user1.state).to eq(user1.country)
    end
  end
end
