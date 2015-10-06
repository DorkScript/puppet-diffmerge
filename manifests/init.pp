# Installs DiffMerge into /Applications
#
# Usage:
#
#   include 'diffmerge'
class diffmerge{
  package { 'diffmerge':
    provider => 'appdmg',
    ensure   => 'installed',
    source   => 'http://download-us.sourcegear.com/DiffMerge/4.2.0/DiffMerge.4.2.0.697.intel.stable.dmg',
  }

  file { 'diffmerge_script' :
    path    => '/usr/bin/diffmerge',
    content => template('diffmerge/diffmerge.sh.erb'),
    require => Package['diffmerge'],
    mode    => 755,
    owner   => root,
    group   => wheel,
  }
}
