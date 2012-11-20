require 'spec_helper'

describe Outfit do
  before { @outfit = FactoryGirl.build(:outfit) }

  it { should respond_to(:name) }
  it { should respond_to(:description) }

  describe "when name not present" do
    before { @outfit.name = '' }
    it { should_not be_valid }
  end

  describe "when description not present" do
    before { @outfit.description = '' }
    it { should be_valid }
  end
end
