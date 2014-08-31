require 'spec_helper'

describe User do
  it { should have_many :companies }
  it { should have_many :payment_methods }
  it { should have_many :payments }
end
