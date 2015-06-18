class profiles::jenkins::proxy {
nginx::resource::upstream { 'jenkins-master':
  members => [
    'localhost:8080',
  ],
}

nginx::resource::vhost { 'jenkins-master.com':
  proxy => 'https://jenkins-master',
  ssl                  => true,
  ssl_cert             => '/var/lib/puppet/ssl/certs/jenkins-master.com.pem',
  ssl_key              => '/var/lib/puppet/ssl/private_keys/jenkins-master.com.pem',
  ssl_port             => 443,
}
}
