require 'spec_helper'
describe 'diffmerge' do
  it do
    should contain_package('diffmerge').with({
      :provider => 'pkg',
      :source => 'http://download-us.sourcegear.com/DiffMerge/3.3.2/DiffMerge.3.3.2.1139.pkg'
    })
  end
end
