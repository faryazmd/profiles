class profiles::jenkins::proxy {
nginx::resource::upstream { 'jenkins-master.xorlab1.com':
  members => [
    'localhost:8080',
  ],
}

nginx::resource::vhost { 'jenkins-master.xorlab1.com':
  proxy => 'http://jenkins-master.xorlab1.com',
#  ssl                  => true,
#  ssl_cert    => '/etc/puppetlabs/puppet/ssl/certs/jenkins-master.xorlab1.com.pem',
#  ssl_key     => '/etc/puppetlabs/puppet/ssl/private_keys/jenkins-master.xorlab1.com.pem',
}
}
