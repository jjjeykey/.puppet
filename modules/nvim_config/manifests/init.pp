class nvim_config {

  file { "/home/$id/.config/nvim":
    owner        => "$id",
    group        => "$id",
    mode         => "755",
    ensure       => link,
    recurse      => true,
    recurselimit => 1,
    source       => "puppet:///modules/nvim_config/nvim",
  }

  vcsrepo { "/home/$id/gitRepos/my/dotfiles":
    ensure   => present,
    provider => git,
    source   => 'git@github.com:jjjeykey/dotfiles.git',
  }

  vcsrepo { "/home/$id/gitRepos/my/puppet":
    ensure   => present,
    provider => git,
    source   => 'git@github.com:jjjeykey/.puppet.git',
  }
}
