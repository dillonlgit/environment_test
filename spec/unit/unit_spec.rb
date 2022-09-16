# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(author: 'jk rowling')
  end

  it 'is valid with valid attributes' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(price: 26.95)
  end

  it 'is valid with valid attributes' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(publisheddate: '2019-01-13')
  end

  it 'is valid with valid attributes' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.publisheddate = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', price: 26.95, author: 'jk rowling', publisheddate: '2019-01-13')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.publisheddate = nil
    expect(subject).not_to be_valid
  end
end