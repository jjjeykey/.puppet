class localGitClone {
  $myGitRepos = ["dotfiles", "myPuppet", "vimDotfiles"]

# function call with lambda:
  $myGitRepos.each |String $repo| {
    vcsrepo { "/home/$id/gitRepos/my/$repo":
      ensure   => present,
      provider => git,
      source   => "git@github.com:jjjeykey/$repo.git",
    }
  }


# create cron job for auto syncing my have-to-be-uptodate-repos
  #exec { 'refresh_cache':
      #command => 'refresh_cache 8600',
      #path    => '/usr/local/bin/:/bin/',
      ## path    => [ '/usr/local/bin/', '/bin/' ],  # alternative syntax
    #}
}
