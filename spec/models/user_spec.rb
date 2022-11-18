require 'rails_helper'

RSpec.describe User, type: :model do
  context 'When Creating User ...' do
    let(:user) { build :user }
    let(:user1) { create :user, state: nil }
    let(:user2) { build :user, email: user.email, phone_number: user.phone_number }
    it 'should be valid user with all attribute' do
      expect(user.valid?).to eq(true)
    end
    it 'Should have country as state if state nil' do
      expect(user1.state).to eq(user1.country)
    end

    it "should raise invalid record for duplicate email & contact" do
      user.save
      expect(user2.save).to eq(false)
      expect { user2.save! }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end
