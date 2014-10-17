# Vagrant Icinga

## Install Dependencies

    $ bundle
    $ bundle exec librarian-puppet install

## Start virtual machine

    $ vagrant up

Once it's booted you should be able to visit http://localhost:8080/icinga. User is icingaadmin and password is password.

## Example config

    define host {
      host_name          localhost
      check_command      check-host-alive
      max_check_attempts 3
      address            127.0.0.1
    }

    define service {
      service_description   ssh server
      host_name             localhost
      check_command         check_ssh
      max_check_attempts    3
    }

    define service {
      service_description   root disk space
      host_name             localhost
      check_command         check_disk!20%!10%!/
      max_check_attempts    3
    }

