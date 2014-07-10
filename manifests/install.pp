# == Class: nfsserver::install
#
# Installs the nfs server
class nfsserver::install {
  package { 'nfs-kernel-server':
    ensure => $nfsserver::version
  }
}
