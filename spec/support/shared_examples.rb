shared_examples 'sets @company' do
  it 'sets @company' do
    action
    expect(assigns(:company)).not_to be_nil
  end
end
shared_examples 'sets @payment_method' do
  it 'sets @payment_method' do
    action
    expect(assigns(:payment_method)).not_to be_nil
  end
end
shared_examples 'sets @payment' do
  it 'sets @payment' do
    action
    expect(assigns(:payment)).not_to be_nil
  end
end
