# ssh-action
Run full scripts via SSH in GitHub Action


## SSH Server Configuration
This action will automatically send to the SSL server any environment variable that starts with `GITHUB_`, `INPUT_` or `CLIENT_`. To
be able to use them from the SSL server, you will need to add the following line to /etc/ssh/sshd_config:
AcceptEnv GITHUB_* INPUT_* CLIENT_*

You will need restart the SSH server for changes to take effect.
