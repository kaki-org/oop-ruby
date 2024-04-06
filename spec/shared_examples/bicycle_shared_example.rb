# 共通のテストを定義
shared_examples 'a bicycle' do
  it 'responds to default_chain' do
    expect(subject).to respond_to(:default_chain)
  end

  it 'responds to default_tire_size' do
    expect(subject).to respond_to(:default_tire_size)
  end

  it 'responds to chain' do
    expect(subject).to respond_to(:chain)
  end
end
