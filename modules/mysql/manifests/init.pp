class mysql {

  # root mysql password
  $mysqlpw = "pass"

  # install mysql server
  package { "mysql-server":
    ensure => present,
    require => Exec["apt-get update"]
  }

  #start mysql service
  service { "mysql":
    ensure => running,
    require => Package["mysql-server"],
  }

  # set mysql password
  exec { "set-mysql-password":
    unless => "mysqladmin -uroot -p$mysqlpw status",
    command => "mysqladmin -uroot password $mysqlpw",
    require => Service["mysql"],
  }

  # create database
  exec { "create-database":
    command => "mysql -uroot -p$mysqlpw -e \"CREATE DATABASE IF NOT EXISTS generatedata\"",
    require => Exec["set-mysql-password"]
  }
}
