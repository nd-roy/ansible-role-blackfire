Blackfire.io
============

An ansible role to install and configure Blackfire

Requirements
------------

None.

Role Variables
--------------

__ 'blackfire_server_id' and 'blackfire_token' must be changed !! __
--------------------------------------------------------------------


    # Sets the server id used to authenticate with Blackfire API
    #blackfire_server_id: __CHANGE_THIS_VALUE__
    
    # Sets the server token used to authenticate with Blackfire API. It is unsafe to set this from the command line
    #blackfire_token:     __CHANGE_THIS_VALUE__
    
    # Log verbosity level (4: debug, 3: info, 2: warning, 1: error)
    blackfire_log_level: 1
    
    # Sets the socket the agent should read traces from.
    # Possible value can be a unix socket or a TCP address. ie: unix:///var/run/blackfire/agent.sock or tcp://127.0.0.1:8307
    blackfire_socket: "unix:///var/run/blackfire/agent.sock"
    
    # Sets the URL of Blackfire's data collector
    blackfire_collector: https://blackfire.io

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: all
      roles:
         - { role: AbdoulNdiaye.blackfire }

License
-------

MIT

Author Information
------------------

Abdoul N'Diaye [@AbdoulNdiaye](https://twitter.com/AbdoulNDiaye)

Contact : <abdoul.nd@gmail.com>
