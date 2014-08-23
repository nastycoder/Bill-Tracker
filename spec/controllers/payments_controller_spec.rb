require 'spec_helper'

describe PaymentsController do
  let(:payment) { Fabricate(:payment) }

  describe 'GET index' do
    it 'sets @payments' do
      get :index
      expect(assigns(:payments)).not_to be_nil
    end
  end

  describe 'GET show' do
    let(:action) { get :show, id: payment.id }
    it_behaves_like 'sets @payment'
  end

  describe 'GET new' do
    let(:action) { get :new, id: payment.id }
    it_behaves_like 'sets @payment'
  end

  describe 'GET edit' do
    let(:action) { get :edit, id: payment.id }
    it_behaves_like 'sets @payment'
  end

  describe 'POST create' do
    let(:new_payment) { Fabricate.attributes_for(:payment) }
    let(:action) { post :create, payment: new_payment }

    it 'redirects to payment path' do
      action
      expect(response).to redirect_to payment_path(Payment.last)
    end

    it 'creates a new payment' do
      action
      expect(Payment.count).to eq 1
    end

    it_behaves_like 'sets @payment'
  end

  describe 'PATCH update' do
    let(:new_amount) { Faker::Commerce.price }
    let(:action) { patch :update, id: payment.id, payment: {amount: new_amount} }

    it 'redirects to payment path' do
      action
      expect(response).to redirect_to payment_path(payment)
    end

    it 'saves the changes' do
      action
      expect(Payment.first.amount).to eq new_amount
    end

    it_behaves_like 'sets @payment'
  end

  describe 'DELETE destroy' do
    it 'removes the payment' do
      delete :destroy, id: payment.id
      expect(Payment.count).to be_zero
    end
  end
end
