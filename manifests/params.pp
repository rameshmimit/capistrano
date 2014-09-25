class capistrano::params {
  $app_name     = undef
  $deploy_user  = 'dep_user'
  $deploy_group = 'dep_group'
  $deploy_dir   = '/home/dep_user'
  $capped_dir   = "$deploy_dir/capped"
  $shared_dir   = "$capped_dir/shared"
  $releases_dir = "$capped_dir/releases"
  $log_dir      = "$shared_dir/log"
  $pids_dir     = "$shared_dir/pids"
  $system_dir   = "$shared_dir/system"
  $current_dir  = "$capped_dir/current"
}
