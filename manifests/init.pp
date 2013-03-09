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
}
