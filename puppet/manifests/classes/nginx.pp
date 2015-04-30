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

}
