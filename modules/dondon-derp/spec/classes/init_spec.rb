require 'spec_helper'
describe 'derp' do

  context 'with defaults for all parameters' do
    it { should contain_class('derp') }
  end
end
