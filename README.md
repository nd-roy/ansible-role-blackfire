Blackfire.io
============

[![Build Status](https://travis-ci.org/AbdoulNdiaye/ansible-role-blackfire.svg)](https://travis-ci.org/AbdoulNdiaye/ansible-role-blackfire)
[![Galaxy](https://img.shields.io/badge/Galaxy-AbdoulNdiaye.blackfire-blue.svg)](https://galaxy.ansible.com/list#/roles/3201)
[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/AbdoulNdiaye/ansible-role-blackfire?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

An ansible role to install and configure Blackfire

Requirements
------------

None.

Role Variables
--------------

'blackfire_server_id' and 'blackfire_server_token' must be changed !!
--------------------------------------------------------------

``` yaml
    # Sets the server id used to authenticate with Blackfire API
    #blackfire_server_id: __CHANGE_THIS_VALUE__
    
    # Sets the server token used to authenticate with Blackfire API. It is unsafe to set this from the command line
    #blackfire_server_token: __CHANGE_THIS_VALUE__
    
    # Log verbosity level (4: debug, 3: info, 2: warning, 1: error)
    blackfire_log_level: 1
    
    # Sets the socket the agent should read traces from.
    # Possible value can be a unix socket or a TCP address. ie: unix:///var/run/blackfire/agent.sock or tcp://127.0.0.1:8307
    blackfire_socket: "unix:///var/run/blackfire/agent.sock"
    
    # Sets the URL of Blackfire's data collector
    blackfire_collector: https://blackfire.io
    
    # Restart apache after the activation of blackfire php extension
    blackfire_apache_enable: false
    
    # Restart php fpm after the activation of blackfire php extension
    blackfire_php_fpm_enable: true
```

Dependencies
------------

None.

Example Playbook
----------------

``` yaml
    - hosts: all
      roles:
         - { role: AbdoulNdiaye.Blackfire }
      vars:
        blackfire_server_id:    __CHANGE_THIS_VALUE__
        blackfire_server_token: __CHANGE_THIS_VALUE__
```

FAQ
---

Q: My playbook run fails with error **stderr: sudo: sorry, you must have a tty to run sudo**

A: On RHEL based systems **/etc/sudoers** has line:

```
Defaults    requiretty
```

It's safe to remove that line (https://bugzilla.redhat.com/show_bug.cgi?id=1020147) and by doing that everything should work.

License
-------

MIT

Author Information
------------------

Abdoul N'Diaye [@AbdoulNdiaye](https://twitter.com/AbdoulNDiaye)

Contact : <abdoul.nd@gmail.com>
