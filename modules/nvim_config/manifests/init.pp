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

  $myGitRepos = ["dotfiles", "myPuppet"]

# function call with lambda:
  $myGitRepos.each |String $repo| {
    vcsrepo { "/home/$id/gitRepos/my/$repo":
      ensure   => present,
      provider => git,
      source   => "git@github.com:jjjeykey/$repo.git",
    }
  }
}
