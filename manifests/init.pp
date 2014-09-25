class capistrano (
  $app_name     = $capistrano::app_name,
  $deploy_user  = $capistrano::deploy_user,
  $deploy_group = $capistrano::deploy_group,
  $deploy_dir   = $capistrano::deploy_dir,
  $capped_dir   = $capistrano::capped_dir,
  $shared_dirs  = $capistrano::shared_dirs,
  $releases_dir = $capistrano::releases_dir,
  $log_dir      = $capistrano::log_dir,
  $pids_dir     = $capistrano::pids_dir,
  $system_dir   = $capistrano::system_dir,
  $current_dir  = $capistrano::current_dir,
) inherits capistrano::params {

  $deploy_dir_root = $deploy_dir/$app_name

  file {$deploy_dir_root:
    ensure => directory,
    owner  => $deploy_user,
    mode   => $default_dir_mode,
  }
}
