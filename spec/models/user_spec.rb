require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Tests for User model validation ' do
    subject { User.new(name: 'Rito', email: 'rito@emai.com', password: 'password') }

    before { subject.save }

    it 'name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'name should not be blank' do
      subject.name = ''
      expect(subject).to_not be_valid
    end

    it 'name should not exceed 250 characters' do
      subject.name = "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
             Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer
             took a galley of type and scrambled it to make a type specimen book.
              It has survived not only five centuries"
      expect(subject).to_not be_valid
    end
  end
end
