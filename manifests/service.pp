# == Class: nfsserver::service
#
# Controls the nfs server service
class nfsserver::service {
  $ensure = $nfsserver::start ? {true => running, default => stopped}

  service { 'nfs-kernel-server':
    ensure => $ensure,
    enable => $nfsserver::enable,
  }
}
