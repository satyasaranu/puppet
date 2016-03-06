require 'spec_helper'
describe 'examplemod' do

  context 'with defaults for all parameters' do
    it { should contain_class('examplemod') }
  end
end
