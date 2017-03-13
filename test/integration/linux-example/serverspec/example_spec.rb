require 'spec_helper'

describe file('/tmp/result.txt') do
  it { should be_file }
end
