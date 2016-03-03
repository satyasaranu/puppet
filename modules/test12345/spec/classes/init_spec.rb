require 'spec_helper'
describe 'test12345' do

  context 'with defaults for all parameters' do
    it { should contain_class('test12345') }
  end
end
