andrewrothstein.nomad
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-nomad.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-nomad)

Installs [nomad](https://www.nomadproject.io)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.nomad
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
