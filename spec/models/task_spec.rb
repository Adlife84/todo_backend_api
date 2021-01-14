require 'rails_helper'

# Test suite for the Task model
RSpec.describe Task, type: :model do
  # Association test
  # ensure an task record belongs to a single member record
  it { should belong_to(:member) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:title) }
end
