# Password-less SSH

### Create an SSH Key

_Already done this for GitHub or such? No need to do it again!_

On development workstation, run:

```
ssh-keygen -t rsa
```

Accept defaults for key name. **Do not set a password**.

### Move the key to the Edison

_In the following examples, my Edison is the host `cowdene-01.local`.
Adjust your host accordingly._

Create the remote `~/.ssh` directory:

```
ssh root@cowdene-01.local mkdir -p .ssh
```

Copy your key to the remote:

```
cat ~/.ssh/id_rsa.pub | ssh root@cowdene-01.local 'cat >> .ssh/authorized_keys'
```
