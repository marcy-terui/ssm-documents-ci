require 'spec_helper'

describe file('C:\result.txt') do
  it { should be_file }
end
