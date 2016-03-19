#!/bin/bash
# SSH to beagle bone without strict host key checking. Handy if experimenting with
# several boards at the same time, else you keep having to scrub records from 
# known_hosts file.

ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@192.168.7.2

