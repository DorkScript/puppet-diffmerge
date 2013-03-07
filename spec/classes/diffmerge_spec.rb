require 'spec_helper'
describe 'diffmerge' do
  it do
    should contain_package('diffmerge').with({
      :provider => 'pkgdmg',
      :source => 'http://sourcegar.com/DiffMerge.3.3.2.1139.pkg'
    })
  end
end
