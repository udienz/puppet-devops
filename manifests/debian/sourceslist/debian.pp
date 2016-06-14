class devops::debian::sourceslist::ubuntu {

  apt::source { 'mirrors.kernel.org-standard':
    location => 'http://mirrors.kernel.org/ubuntu',
    release  => $::lsbdistcodename,
    repos    => 'main contrib non-free',
    include  => {
      'src' => true,
      'deb' => true,
    },
  }

  apt::source { 'mirrors.kernel.org-security':
    location => 'http://ftp.us.debian.org/debian-security',
    release  => "${::lsbdistcodename}/security",
    repos    => 'main contrib non-free',
    include  => {
      'src' => true,
      'deb' => true,
    },
  }

  apt::source { 'mirrors.kernel.org-updates':
    location => 'http://mirrors.kernel.org/debian',
    release  => "${::lsbdistcodename}-updates",
    repos    => 'main contrib non-free',
    include  => {
      'src' => true,
      'deb' => true,
    },
  }
}
