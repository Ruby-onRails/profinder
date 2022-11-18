require 'rails_helper'

RSpec.describe Skill, type: :model do
  context 'When creating a skill' do
    let(:skill) { create :skill }
    let(:frontend) { create :frontend }
    let(:backend) { create :backend }

    it "should have type for frontend skill" do
      expect(frontend.id).to_not eq(nil)
      expect(frontend.type).to eq('Frontend')
    end
    it "should have type for backend skill" do
      expect(backend.id).to_not eq(nil)
      expect(backend.type).to eq('Backend')
    end

    it "should raise active record exception if type nil" do
      expect { skill }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end
