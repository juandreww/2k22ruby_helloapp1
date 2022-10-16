require 'spec_helper'
require_relative '../../app/models/dog'
require_relative '../../app/controllers/dog_controller'

RSpec.describe Dog do
    # this is a constant
    subject { Dog.new }
    describe '#bark' do
        it 'returns the "Woof!"' do
            expect(subject.bark).to eql('Woof!')
        end
    end

    describe '#hungry!' do
        it 'returns true if hunger_level is more than 5' do
            dog = describe_class.new(hunger_level: 7)
            expect(dog).to be_hungry
        end

        it 'returns false if hunger_level is 5 or less' do
            dog = describe_class.new(hunger_level: 5)
            expect(dog).to_not be_hungry
        end
    end

end

describe DogController do
end