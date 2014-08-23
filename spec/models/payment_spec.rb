require 'spec_helper'

describe Payment do
  it { should belong_to :company }
  it { should belong_to :payment_method }
end
