require 'spec_helper'

describe PaymentMethod do
  it { should have_many :payments }
  it { should belong_to :user }
end
