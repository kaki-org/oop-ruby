# frozen_string_literal: true

# 共通のテストを定義
# 書籍ではBicycleInterfaceTestとしていたもの
shared_examples 'a bicycle' do
  it 'responds to default_chain' do
    expect(subject).to respond_to(:default_chain)
  end

  it 'responds to chain' do
    expect(subject).to respond_to(:chain)
  end

  it 'responds to size' do
    expect(subject).to respond_to(:size)
  end

  it 'responds to tire_size' do
    expect(subject).to respond_to(:tire_size)
  end

  it 'responds to spares' do
    expect(subject).to respond_to(:spares)
  end
end
