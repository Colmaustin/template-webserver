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

}
