require './binary_search'

describe 'binary_search' do
  let(:key) { 5 }
  context 'an array with 0 elements' do
    it 'should raise an error' do
      expect {binary_search([], key)}.to raise_error(ArgumentError)
    end
  end

  context 'an array with 1 element' do
    subject { binary_search([key], key) }
    it { should equal 0}
  end

  context 'an array with more than 1 element' do
    context 'with search key on the right half of the array' do
      subject { binary_search([1,2,3,4,key], key) }
      it { should equal 4 }
    end

    context 'with search key on the left half of the array' do
      subject { binary_search([key,6,7,8,9], key) }
      it {should equal 0}
    end

    context 'with search key in the middle of the array' do
      subject { binary_search([1,2,3,4,key,6,7,8,9], key) }
      it { should equal 4 }
    end

    context 'when search key does not exist in the array' do
      subject { binary_search([1,2,3], key) }
      it { should equal -1 }
    end
  end
end