class profiles::psexercise {
nginx::resource::vhost { 'www.psexercise.com':
  www_root => '/var/www/www.psexercise.com',
  listen_port => '8000',
}
File {
  owner => 'root',
  group => 'root'
}  
file {
'/var/www/www.psexercise.com':
  ensure => 'directory',
  mode => '0755';
'/var/www/www.psexercise.com/index.html':
  ensure => present,
  mode => '0644',
  source => "puppet:///modules/profiles/index.html",
  notify => Class['nginx::service'],
}  
}
