class php5-fpm {

    package { 'php5-fpm':
        ensure => installed
    }

    service { 'php5-fpm':
        enable => true,
        ensure => running,
        hasrestart => true,
        hasstatus => true,
    }

    file { "/etc/php5/fpm/php.ini":
        source => "puppet:///modules/helloworld/etc/php5/fpm/php.ini",
        ensure => file,
        owner => root,
        group => root,
        mode => 644,
        notify => service["php5-fpm"],
    }

    file { "/etc/php5/fpm/php-fpm.conf":
        source => "puppet:///modules/helloworld/etc/php5/fpm/php-fpm.conf",
        ensure => file,
        owner => root,
        group => root,
        mode => 644,
        notify => service["php5-fpm"],
    }

    file { "/etc/php5/fpm/pool.d/www.conf":
        source => "puppet:///modules/helloworld/etc/php5/fpm/pool.d/www.conf",
        ensure => file,
        owner => root,
        group => root,
        mode => 644,
        notify => service["php5-fpm"],
    }

}
