# ssh-action
Run full scripts via SSH in GitHub Action


## SSH Server Configuration
To use any of the [predefined $GITHUB_* environment variables](https://help.github.com/en/articles/virtual-environments-for-github-actions#environment-variables),
you will need to add the following line to /etc/ssh/sshd_config:
AcceptEnv GITHUB_*
