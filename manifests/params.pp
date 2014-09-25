class capistrano::params {
  $app_name     = undef
  $deploy_user  = 'slideshare'
  $deploy_group = 'slideshare'
  $deploy_dir   = '/home/slideshare'
  $capped_dir   = "$deploy_dir/capped"
  $shared_dir   = "$capped_dir/shared"
  $releases_dir = "$capped_dir/releases"
  $log_dir      = "$shared_dir/log"
  $pids_dir     = "$shared_dir/pids"
  $system_dir   = "$shared_dir/system"
  $current_dir  = "$capped_dir/current"
}
