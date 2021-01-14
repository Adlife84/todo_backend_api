require 'rails_helper'

# Test suite for the Member model
RSpec.describe Member, type: :model do
  # Association test
  # ensure Member model has a 1:m relationship with the Task model
  it { should have_many(:tasks).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:img) }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:tel) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:status) }
end
