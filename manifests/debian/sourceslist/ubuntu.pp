class devops::debian::sourceslist::ubuntu {

# lint:ignore:double_quoted_strings

  apt::source { 'us.archive.ubuntu.com-standard':
    location => 'http://us.archive.ubuntu.com/ubuntu',
    release  => $::lsbdistcodename,
    repos    => 'main restricted universe multiverse',
    include  => {
      'src' => true,
      'deb' => true,
    },
  }

  apt::source { 'us.archive.ubuntu.com-security':
    location => 'http://us.archive.ubuntu.com/ubuntu',
    release  => "${::lsbdistcodename}-security",
    repos    => 'main restricted universe multiverse',
    include  => {
      'src' => true,
      'deb' => true,
    },
  }

  apt::source { 'us.archive.ubuntu.com-updates':
    location => 'http://us.archive.ubuntu.com/ubuntu',
    release  => "${::lsbdistcodename}-updates",
    repos    => 'main restricted universe multiverse',
    include  => {
      'src' => true,
      'deb' => true,
    },
  }

# lint:endignore
  
}
