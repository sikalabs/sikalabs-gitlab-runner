# ondrejsika-gitlab-runner

    Ondrej Sika <ondrej@ondrejsika.com>
    https://github.com/ondrejsika/ondrejsika-gitlab-runner

Bootstrap scripts for my Gitlab Runner with Docker support.

## Create Runner (in Docker)

```
./create-runner.sh
```

## Register Runner to Gitlab

```
./register-runner.sh <gitlab_url> <token> [<runner name>]
```

For examle

```
./register-runner.sh https://mygitlab.com xxxx runner01
```
