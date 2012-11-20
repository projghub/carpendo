require 'spec_helper'

describe Competition do
  before { @competition = FactoryGirl.build(:competition) }

  it { should respond_to(:name) }
  it { should respond_to(:winner_id) }
  it { should respond_to(:start_at) }
  it { should respond_to(:end_at) }

  describe "when name not present" do
    before { @competition.name = '' }
    it { should_not be_valid }
  end
end
