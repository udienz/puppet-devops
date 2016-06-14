# This is account definition

class devops::account {
  user { 'mahyuddin':
    ensure         => 'present',
    name           => 'mahyuddin',
    home           => '/home/mahyuddin',
    shell          => '/bin/bash',
    managehome     => true,
    purge_ssh_keys => true,
    comment        => 'Mahyuddin Susanto',
  }
  user { 'root':
    password       => '*',
    purge_ssh_keys => true,
    managehome     => true,
    home           => '/root',
  }
  
  augeas { 'mahyuddin':
    context => '/files/etc/sudoers',
    changes => [
      "set spec[user = 'mahyuddin']/user mahyuddin",
      "set spec[user = 'mahyuddin']/host_group/host ALL",
      "set spec[user = 'mahyuddin']/host_group/command ALL",
      "set spec[user = 'mahyuddin']/host_group/command/tag NOPASSWD",
    ],
  }
  
  ssh_authorized_key { 'mahyuddin_ssh_dsa':
    user => 'mahyuddin',
    type => 'dsa',
    key  => 'AAAAB3NzaC1kc3MAAACBAKtnnJe19d/EK21PCdeaYu6gEovB/O66RWFkTey150tJAgSzHXNdfYQS/ZskfrjM3oWpkCwdk2nXNstsXyMbgzuXWyvXyhHbINWz3uza3wAjBdSbKjERZfV/xJY5fdYmctQRv65PDobrfy0R8D2gcnVxg17rqfIODEne9kqygPzNAAAAFQD//6S7WaIljngUc2AY50DLy+mNsQAAAIEAk2RjDtx2ApLvRNevfiVYnoT59t0Q3Lx5SCuZ5OlZhetrzauL3TnVMNEwdKoU5qG+ETOeYO/vbZhy6zp2qHVBWgBE+cKfHB/8NnrLfsTbNQ1g/jS1IVCZCY2voWFreDhu/NjDJbhXYti8qvKyz7lOduHCipM+YOamP7iKFkpwm3YAAACAG3U8Nxe9wKaFrEjFtX+k/Mk+72UV+JEPkNbSWZs+4WjAGWiDffWpg97iWfYsFVh9jy5pxvX/kCYr+ZdBQZ7Uv8tdB4PyagqInfKhHWzHjb5PAgKJJtWxqXUKXc/555vDSsTqhy0dFVETO+Ur3ND0wgEwZwRmrC5dqmwQ1cp4FgM='
  }

  ssh_authorized_key { 'mahyuddin_ssh_rsa':
    user => 'mahyuddin',
    type => 'rsa',
    key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAqdjCzQ5JXhKe7gl1w8MFO66Q9M47s8AW67wMIqcrXiyMVdhC/DA6+OL2Op8bB+jlxGSrx1ah3SpYHULooOqMJxlCWkjLJhVF7blNsvtZeTWLWtod3XW6KUzgZesKIl52jPylWWWRg4JOxZljVP1eSIMKiXhmx6PBQi0igeKd5cS+QmI9M3WSn/LPWq5HLTo+2JBKdKFKWmPc/2M4Ui55vF89hqpMHEaYepMzeDAlopd4xwuh8LMsQQHDDiw2f3NQ+T1A5G0jhQDtn7hWGdb/k/5MW1mTtAq0NbHd+Sfvfl2+aDR02BUtAwP4qZVHt4HZIC+J7836POniPIuNILItPQ=='
  }

  ssh_authorized_key { 'mahyuddin_ssh_ecdsa':
    user => 'mahyuddin',
    type => 'ecdsa-sha2-nistp256',
    key  => 'AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBJS2wQrZS5WIpeS70ByfxXb4Y4tz2X0sgvYpUue74Zr8IckTklrwLIr7tYnkOrlVHeVN2UWM9khUGYaDjz3loIs='
  }

  ssh_authorized_key { 'mahyuddin_wowrack_dsa':
    user => 'mahyuddin',
    type => 'dsa',
    key  => 'AAAAB3NzaC1kc3MAAACBAKtnnJe19d/EK21PCdeaYu6gEovB/O66RWFkTey150tJAgSzHXNdfYQS/ZskfrjM3oWpkCwdk2nXNstsXyMbgzuXWyvXyhHbINWz3uza3wAjBdSbKjERZfV/xJY5fdYmctQRv65PDobrfy0R8D2gcnVxg17rqfIODEne9kqygPzNAAAAFQD//6S7WaIljngUc2AY50DLy+mNsQAAAIEAk2RjDtx2ApLvRNevfiVYnoT59t0Q3Lx5SCuZ5OlZhetrzauL3TnVMNEwdKoU5qG+ETOeYO/vbZhy6zp2qHVBWgBE+cKfHB/8NnrLfsTbNQ1g/jS1IVCZCY2voWFreDhu/NjDJbhXYti8qvKyz7lOduHCipM+YOamP7iKFkpwm3YAAACAG3U8Nxe9wKaFrEjFtX+k/Mk+72UV+JEPkNbSWZs+4WjAGWiDffWpg97iWfYsFVh9jy5pxvX/kCYr+ZdBQZ7Uv8tdB4PyagqInfKhHWzHjb5PAgKJJtWxqXUKXc/555vDSsTqhy0dFVETO+Ur3ND0wgEwZwRmrC5dqmwQ1cp4FgM='
  }

  ssh_authorized_key { 'mahyuddin_wowrack_rsa':
    user => 'mahyuddin',
    type => 'rsa',
    key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAqdjCzQ5JXhKe7gl1w8MFO66Q9M47s8AW67wMIqcrXiyMVdhC/DA6+OL2Op8bB+jlxGSrx1ah3SpYHULooOqMJxlCWkjLJhVF7blNsvtZeTWLWtod3XW6KUzgZesKIl52jPylWWWRg4JOxZljVP1eSIMKiXhmx6PBQi0igeKd5cS+QmI9M3WSn/LPWq5HLTo+2JBKdKFKWmPc/2M4Ui55vF89hqpMHEaYepMzeDAlopd4xwuh8LMsQQHDDiw2f3NQ+T1A5G0jhQDtn7hWGdb/k/5MW1mTtAq0NbHd+Sfvfl2+aDR02BUtAwP4qZVHt4HZIC+J7836POniPIuNILItPQ=='
  }

  ssh_authorized_key { 'mahyuddin_wowrack_ecdsa':
    user => 'mahyuddin',
    type => 'ecdsa-sha2-nistp256',
    key  => 'AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBJS2wQrZS5WIpeS70ByfxXb4Y4tz2X0sgvYpUue74Zr8IckTklrwLIr7tYnkOrlVHeVN2UWM9khUGYaDjz3loIs=',
  }
}
