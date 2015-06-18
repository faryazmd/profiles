class profiles::jenkins::proxy {
nginx::resource::upstream { 'jenkins-master':
  members => [
    'localhost:8080',
  ],
}

nginx::resource::vhost { 'jenkins-master.com':
  proxy => 'http://jenkins-master',
}
