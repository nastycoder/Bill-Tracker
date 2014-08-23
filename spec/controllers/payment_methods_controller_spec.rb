require 'spec_helper'

describe PaymentMethodsController do
  let(:payment_method) { Fabricate(:payment_method) }

  describe 'GET index' do
    it 'sets @payment_methods' do
      get :index
      expect(assigns(:payment_methods)).not_to be_nil
    end
  end

  describe 'GET show' do
    let(:action) { get :show, id: payment_method.id }
    it_behaves_like 'sets @payment_method'
  end

  describe 'GET new' do
    let(:action) { get :new, id: payment_method.id }
    it_behaves_like 'sets @payment_method'
  end

  describe 'GET edit' do
    let(:action) { get :edit, id: payment_method.id }
    it_behaves_like 'sets @payment_method'
  end

  describe 'POST create' do
    let(:new_payment_method) { Fabricate.attributes_for(:payment_method) }
    let(:action) { post :create, payment_method: new_payment_method }

    it 'redirects to payment_method path' do
      action
      expect(response).to redirect_to payment_method_path(PaymentMethod.last)
    end

    it 'creates a new payment_method' do
      action
      expect(PaymentMethod.count).to eq 1
    end

    it_behaves_like 'sets @payment_method'
  end

  describe 'PATCH update' do
    let(:action) { patch :update, id: payment_method.id, payment_method: {name: 'Somthing else'} }

    it 'redirects to payment_method path' do
      action
      expect(response).to redirect_to payment_method_path(payment_method)
    end

    it 'saves the changes' do
      action
      expect(PaymentMethod.first.name).to eq 'Somthing else'
    end

    it_behaves_like 'sets @payment_method'
  end

  describe 'DELETE destroy' do
    it 'removes the payment_method' do
      delete :destroy, id: payment_method.id
      expect(PaymentMethod.count).to be_zero
    end
  end
end
