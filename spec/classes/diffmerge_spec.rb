require 'spec_helper'
describe 'diffmerge' do
  it do
    should contain_package('diffmerge').with({
      :provider => 'appdmg',
      :ensure = 'installed',
      :source => 'http://download-us.sourcegear.com/DiffMerge/3.3.2/DiffMerge.3.3.2.1139.dmg'
    })
  end
end
