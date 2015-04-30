class newrelic {

    package { "newrelic-sysmond":
        ensure => installed
    }

    service { "newrelic-sysmond":
       enable => true,
       ensure => running,
       hasrestart => true,
       hasstatus => true,
    }

    file { "/etc/newrelic/nrsysmond.cfg":
        source => "puppet:///modules/helloworld/etc/newrelic/nrsysmond.cfg",
        ensure => file,
        owner => root,
        group => root,
        mode => 644,
        notify => service["newrelic-sysmond"],
    } 

}
