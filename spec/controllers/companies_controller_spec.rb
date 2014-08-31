require 'spec_helper'

describe CompaniesController do
  let(:user) { Fabricate(:user) }
  let(:company) { Fabricate(:company, user: user) }
  before { set_user(user) }

  describe 'GET index' do
    it 'sets @companies' do
      get :index
      expect(assigns(:companies)).not_to be_nil
    end
  end

  describe 'GET show' do
    let(:action) { get :show, id: company.id }
    it_behaves_like 'sets @company'
  end

  describe 'GET new' do
    let(:action) { get :new, id: company.id }
    it_behaves_like 'sets @company'
  end

  describe 'GET edit' do
    let(:action) { get :edit, id: company.id }
    it_behaves_like 'sets @company'
  end

  describe 'POST create' do
    let(:new_company) { Fabricate.attributes_for(:company) }
    let(:action) { post :create, company: new_company }

    it 'redirects to company path' do
      action
      expect(response).to redirect_to company_path(Company.last)
    end

    it 'creates a new company' do
      action
      expect(Company.count).to eq 1
    end

    it_behaves_like 'sets @company'
  end

  describe 'PATCH update' do
    let(:action) { patch :update, id: company.id, company: {name: 'Somthing else'} }

    it 'redirects to company path' do
      action
      expect(response).to redirect_to company_path(company)
    end

    it 'saves the changes' do
      action
      expect(Company.first.name).to eq 'Somthing else'
    end

    it_behaves_like 'sets @company'
  end

  describe 'DELETE destroy' do
    it 'removes the company' do
      delete :destroy, id: company.id
      expect(Company.count).to be_zero
    end
  end
end
