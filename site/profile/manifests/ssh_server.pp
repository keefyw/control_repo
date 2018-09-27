class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDThqoHWhI6yFatSDTAL6TJgXMWKYB3rI+J+00hid4HVDjXv+bb8rWeia7bScEdrfPvkR0U0Tu7gErAnCSnofLhKVx3QtVjKwSq2z8TkKBe/Ev7WhF2ETs024MNpPasNm+CvX76bmUa271RQP3NxDDe/fCtDNHth6xUIyCI5Ic+iRWJP0y9X99bL/BomP9nqiVeC3SONfFXBb80kN9r/ruKJDGM8yHifMeSA+gUm3Lf3LFdjc92abcvfoDgtCdPPdIDp7AR83fO4I+Rf/LcEcD7F/V+ftouPjXUSo4Z1+uAC0IjcDj/2FBJpoOAfVNkemnkJ1OH71ahwzEZtkC7MDLj',
  }  
}
