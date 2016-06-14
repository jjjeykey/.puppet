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

  vcsrepo { "/home/$id/git/":
    ensure   => present,
    provider => git,
    source   => 'git@github.com:jjjeykey/dotfiles.git',
  }
}