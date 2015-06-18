class profiles::jenkins::proxy {
nginx::resource::upstream { 'jenkins-master.com':
  members => [
    'localhost:8080',
  ],
}

nginx::resource::vhost { 'jenkins-master.com':
  proxy => 'https://jenkins-master.com',
  ssl                  => true,
  ssl_cert    => '/etc/puppetlabs/puppet/ssl/certs/jenkins-master.xorlab1.com.pem',
  ssl_key     => '/etc/puppetlabs/puppet/ssl/private_keys/jenkins-master.xorlab1.com.pem',
}
}
