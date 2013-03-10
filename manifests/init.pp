# Installs DiffMerge into /Applications
#
# Usage:
#
#   include 'diffmerge'
class diffmerge{
  package { 'diffmerge':
    provider => 'appdmg',
    ensure   => 'installed',
    source   => 'http://download-us.sourcegear.com/DiffMerge/3.3.2/DiffMerge.3.3.2.1139.dmg',
  }

  file { 'diffmerge_script' :
    path    => '/usr/bin/diffmerge',
    content => template('diffmerge/diffmerge.sh.erb'),
    require => Package['diffmerge'],
    mode    => 644,
    owner   => root,
    group   => wheel,
  }
}
