# This is common package

class devops::package::common {
  package { [
      'htop', 'mc', 'iftop', 'nload', 'sudo', 'bash-completion',
    ]:
      ensure => latest,
  }
}
