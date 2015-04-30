class nginx {
    
    package { "nginx":
        ensure => installed
    }

    service { "nginx":
       enable => true,
       ensure => running,
       hasrestart => true,
       hasstatus => true,
    }

    file { "/etc/nginx/nginx.conf":
        source => "puppet:///modules/helloworld/etc/nginx/nginx.conf",
        ensure => file,
        owner => root,
        group => root,
        mode => 644,
        notify => service["nginx"],
    }

    file { "/etc/nginx/sites-available/default":
        source => "puppet:///modules/helloworld/etc/nginx/sites-available/default",
        ensure => file,
        owner => root,
        group => root,
        mode => 644,
        notify => service["nginx"],
    }

}
