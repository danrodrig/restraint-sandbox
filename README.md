# Vagrant environment for Restraint

## Quick start

```
$ vagrant up

$ vagrant ssh client

$ restraint -t root@test01 -j /vagrant/jobs/pointless.xml

```

## Valgrind

To install the debuginfo packages and the Valgrind wrapper, use the
Restraint Ansible role variable,

```
vars:
  - restraint_debug: yes
```

```
$ restraint -t root@test01 -j /vagrant/jobs/pointless.xml --restraint-path restraintd-loves-valgrind
```

Valgrind will use the log file `/var/tmp/restraintd-vg_<unix_timestamp>.log` in the `test` machine.

```
$ vagrant ssh test01

$ less /var/tmp/restraintd-vg_<unix_timestamp>.log
```
