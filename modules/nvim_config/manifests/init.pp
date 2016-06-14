class vim_config {

  file { "/home/$id/.config/nvim":
    owner => "$id",
    group => "$id",
    mode => "755",
    ensure => directory,
    recurse => true,
    source => "puppet:///modules/nvim_config/.vim",
  }

}
