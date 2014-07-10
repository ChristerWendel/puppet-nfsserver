# == Class: nfsserver::configure
#
# Configures the nfs server
class nfsserver::configure {
  $directories = $nfsserver::export_directories
  $parameters = $nfsserver::export_parameters

  augeas { '/etc/exports':
    context => '/files/etc/exports',
    changes => template('nfsserver/exports.erb'),
  }
}
