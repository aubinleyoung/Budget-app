require 'rails_helper'

RSpec.describe Transaction, type: :model do
  subject do
    user = User.create(name: 'Aubin', email: 'aubin@test.come', password: '201910200')
    category = Category.create(user:, name: 'food', icon: 't_icon')
    Transaction.new(user:, category:, name: 'January', amount: 30)
  end

  before { subject.save }

  it 'subject should be valid' do
    expect(subject).to be_valid
  end

  describe 'validations' do
    it 'not valid without name' do
      subject.name = ''
      expect(subject).to_not be_valid
    end

    it 'valid if amount isnt greater than zero' do
      subject.amount = 0
      expect(subject).to be_valid
    end
  end
end
