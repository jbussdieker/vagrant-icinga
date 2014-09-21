# Vagrant Icinga

## Install Dependencies

    $ bundle
    $ bundle exec librarian-puppet install

## Start virtual machine

    $ vagrant up

## TADA!

    $ vagrant ssh
    (vagrant) $ sudo htpasswd -c /etc/icinga/htpasswd.users icingaadmin

Visit http://localhost:8080/icinga
