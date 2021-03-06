class devops::package::ssh {
  class { 'ssh::server':
    options => {
      'Protocol'                        => '2',
      'HostKey'                         => [
        '/etc/ssh/ssh_host_rsa_key',
        '/etc/ssh/ssh_host_dsa_key',
        '/etc/ssh/ssh_host_ecdsa_key',
        '/etc/ssh/ssh_host_ed25519_key'
      ],
      'UsePrivilegeSeparation'          => 'yes',
      'KeyRegenerationInterval'         => '3600',
      'ServerKeyBits'                   => '1024',
      'SyslogFacility'                  => 'AUTH',
      'LogLevel'                        => 'INFO',
      'LoginGraceTime'                  => '120',
      'PermitRootLogin'                 => 'without-password',
      'StrictModes'                     => 'yes',
      'RSAAuthentication'               => 'yes',
      'PubkeyAuthentication'            => 'yes',
      'IgnoreRhosts'                    => 'yes',
      'RhostsRSAAuthentication'         => 'no',
      'HostbasedAuthentication'         => 'no',
      'PermitEmptyPasswords'            => 'no',
      'ChallengeResponseAuthentication' => 'no',
      'PasswordAuthentication'          => 'no',
      'X11Forwarding'                   => 'no',
      'X11DisplayOffset'                => '10',
      'PrintMotd'                       => 'no',
      'PrintLastLog'                    => 'yes',
      'TCPKeepAlive'                    => 'yes',
      'AcceptEnv'                       => 'LANG LC_*',
      'Subsystem'                       => 'sftp /usr/lib/openssh/sftp-server',
      'UsePAM'                          => 'yes',
      'Port'                            => [2250],
    },
  }

}
# vim:syntax=puppet:set ts=2 sw=2 et:
