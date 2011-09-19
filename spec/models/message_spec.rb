require 'spec_helper'

describe Message do
  it { should have_many(:comments) }
end
