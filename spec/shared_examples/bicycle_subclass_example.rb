# サブクラスのテストを共通化するための共有テストを定義する
# BicycleSubclassTestとして書籍で扱われていたもの
shared_examples 'a bicycle subclass' do
  it 'responds to post_initialize' do
    expect(subject).to respond_to(:post_initialize)
  end

  it 'responds to local_spares' do
    expect(subject).to respond_to(:local_spares)
  end
end
