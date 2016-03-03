require 'spec_helper'
describe 'abc123' do

  context 'with defaults for all parameters' do
    it { should contain_class('abc123') }
  end
end
