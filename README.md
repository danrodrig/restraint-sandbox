# Vagrant environment for Restraint

## Quick start

```
$ vagrant up

$ vagrant ssh

$ restraint -t root@localhost -j /vagrant/jobs/pointless.xml
```

## Valgrind

```
$ restraint -t root@localhost -j /vagrant/jobs/pointless.xml --restraint-path restraintd-loves-valgrind
```

Valgrind will use the log file `/tmp/restraintd-vg_<unix_timestamp>.log`
