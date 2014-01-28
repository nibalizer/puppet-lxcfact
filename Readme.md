puppet-lxcfact
==============

This is a trivial module to pluginsync a fact to detect if a host is an LXC or not. Simply add this module to your modulepath and a fact ``is_container`` will appear.


Example
-------

After installing the module and pluginsyncing it over to an LXC you can verify behavior by:


    [root@ol63cont facter]# facter -p | grep is_container
    is_container => false


Functionality
-------------


This fact is tested on Oracle Enterprise Linux 5 containers on an OEL6 host which have no /dev/mem exposed by default for security reasons. It would be excellent to see some pull requests to add support for LXCs of other types and on other host platforms.


License
-------


Apache 2.0
