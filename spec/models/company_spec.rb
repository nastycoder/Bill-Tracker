require 'spec_helper'

describe Company do
  it { should have_many :payments }
end
