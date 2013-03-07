# Installs DiffMerge into /Applications
#
# Usage:
#
#   include 'diffmerge'
class diffmerge{
  package { 'diffmerge':
    provider => 'pkgdmg',
    ensure   => 'installed',
    source   => 'http://sourcegar.com/DiffMerge.3.3.2.1139.pkg',
  }
}
