# == Class: nfsserver
#
# A module to add nfs exports to /etc/exports
#
# === Parameters
# ["version"]
#   The package version to install
#
# ["export_directories"]
#   An array of directories to export
#
# ["export_parameters"]
#   An array of parameters added to each export
#
# ["enable"]
#   Should the service be enabled during boot time?
#
# ["start"]
#   Should the service be started by Puppet

class nfsserver(
  $version = 'present',
  $export_directories = ['/srv/homes'],
  $export_parameters = ['ro', 'async', 'no_subtree_check'],
  $enable = true,
  $start = true
  )  {
    class{'nfsserver::install': } ->
    class{'nfsserver::configure': } ~>
    class{'nfsserver::service': } ->
    Class['nfsserver']
  }
