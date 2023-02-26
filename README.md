> **⚠️⚠️⚠️ Deprecated in favor of `slu gitlab-ci setup-runner` ⚠️⚠️⚠️**

Use [slu](https://github.com/sikalabs/slu) instead of this repository.

```
slu gitlab-ci setup-runner --gitlab-url <url> --registration-token <token> --concurrency <concurrency>
```

# sikalabs-gitlab-runner

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
