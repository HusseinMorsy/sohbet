require 'spec_helper'

describe Comment do

  it { should belong_to(:message) }

  it { should belong_to(:user) }
end
