$mainUser = "jakob"

$desiredPackages = [
  'curl',
  'build-essential',
  'git',
  'git-core',
  'gitk',
  'ack-grep',
  'ncurses-term',
  'xclip',
  'unzip',
  'unrar',
  's3cmd',
  'android-tools-adb',
  'android-tools-fastboot',
  'tmux',
  'shellcheck', # bash checkstyle
  'rbenv', # switch easily between ruby versions
  'tidy', # html syntax checker + reformatter
  'ksshaskpass', # for git to ask for password
  'puppet-module-puppetlabs-vcsrepo', # module for git etc. in puppet
  'trash-cli', # alternative to rm that uses trash bin
]

$undesiredPackages = ['vim', 'vim-gnome']

package { $desiredPackages:
  ensure => installed
}

package { $undesiredPackages:
  ensure => purged
}
