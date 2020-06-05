# Vagrant environment for Restraint

## Quick start

```
$ vagrant up

$ vagrant ssh client

$ restraint -t root@test -j /vagrant/jobs/pointless.xml

```

## Valgrind

```
$ restraint -t root@test -j /vagrant/jobs/pointless.xml --restraint-path restraintd-loves-valgrind
```

Valgrind will use the log file `/var/tmp/restraintd-vg_<unix_timestamp>.log` in the `test` machine.

```
$ vagrant ssh test

$ less /var/tmp/restraintd-vg_<unix_timestamp>.log
```
