class ntp {

    package { "ntp":
        ensure => installed
    }

    service { "ntp":
       enable => true,
       ensure => running,
       hasrestart => true,
       hasstatus => true,
    }
}
