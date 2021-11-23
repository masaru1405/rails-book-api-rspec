require 'rails_helper'

RSpec.describe Book, type: :model do
  # subject{
  #   described_class.new(
  #     title: "Lorem Ipsum",
  #     author: "Loremm Ipsum",
  #     category_id: 1
  #   )
  # }

  # describe 'Validations' do
  #   it 'is valid with valid attributes' do
  #     expect(subject).to be_valid
  #   end
  
  #   it 'is not valid without a title' do
  #     subject.title = nil
  #     expect(subject).to_not be_valid
  #   end
  
  #   it 'is not valid without a author' do
  #     subject.author = nil
  #     expect(subject).to_not be_valid
  #   end
  
  #   it 'is not valid without a category_id' do
  #     subject.category_id = nil
  #     expect(subject).to_not be_valid
  #   end
  # end
  
  describe 'Validations' do
    it {should validate_presence_of(:title)}
    it {should validate_length_of(:title).is_at_least(3)}
    it {should validate_presence_of(:author)}
  end

  describe 'Associations' do
    it {should belong_to(:category).without_validating_presence}
  end

end
