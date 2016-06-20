class nvim_config {

  #file { "/home/$id/.config/nvim":
    #owner        => "$id",
    #group        => "$id",
    #mode         => "755",
    #ensure       => link,
    #recurse      => true,
    #recurselimit => 1,
    #source       => "puppet:///modules/nvim_config/nvim",
  #}

# VIM Dot Files
  vcsrepo { 'vim-dotfiles':
      path     => "/home/$id/.config/nvim",
      ensure   => mirror,
      provider => git,
      source   => "git@github.com:jjjeykey/vimDotfiles.git"
  }
}
