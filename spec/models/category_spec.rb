require 'rails_helper'

RSpec.describe Category, type: :model do
  # subject{
  #   described_class.new(name: "Lorem Ipsum")
  # }

  describe 'Validations' do
    # it 'is valid with valid attributes' do
    #   expect(subject).to be_valid
    # end
  
    # it 'is not valid without a title' do
    #   subject.name = nil
    #   expect(subject).to_not be_valid
    # end
    it {should validate_presence_of(:name)}
    it {should validate_length_of(:name).is_at_least(3)}
  end

  describe 'Associations' do
    it {should have_many(:books)}
  end
end
