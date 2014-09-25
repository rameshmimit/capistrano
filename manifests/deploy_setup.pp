# A capistrano deploy location
class capistrano::deploy_setup (
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

) {
  ensure_resource('user',  $deploy_user, {
    ensure => present,
  })

    ensure_resource('group',  $share_group, {
      ensure => present,
    })



  file { [
    $deploy_dir,
    $capped_dir,
    $shared_dir
    $releases_dir,
    $log_dir,
    $pids_dir,
    $system_dir,
    $current_dir,
  ]:
    ensure => directory,
    owner  => $deploy_user,
    group  => $deploy_group,
    mode   => '0755',
  }

}
