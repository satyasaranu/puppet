require 'spec_helper'
describe 'test123' do

  context 'with defaults for all parameters' do
    it { should contain_class('test123') }
  end
end
