# trio-test

trio-test is a scaffold containing a front-end, an API and a database all in one server and with CI.

It uses:
- Docker
- Docker Compose
- Docker Hub
- Travis CI

And requires
- a running server (this project was tested with a free [AWS EC2 server](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html))
- an SSH key pair.

## Get started

[Link](https://git-scm.com/docs/git-remote) this project to your own GitHub repository.

[Enable](https://github.com/settings/installations/6075156?repository_ids=) Travis on your repository.

Encrypt your private key with Travis (add the option `--com` if you are using travis-ci.com instead of travis-ci.org):

```
travis encrypt-file <path-to-private-key> <path-to-repository>/private_key.enc
```

It will provide you a command to add to your `.travis.yml`. All you have to do is make sure that the 2 environment variables (`$encrypted_<some-hex-number>`) provided match with the ones in your `.travis.yml`. If not, replace them.

```
openssl aes-256-cbc -K $encrypted_34a133650a4c_key -iv $encrypted_34a133650a4c_iv -in <path-to-repository>/private_key.enc -out ~\/.ssh/<private-key-name> -d
```

*Note that these environment variables are automatically added to your repository.*

Set the following environment variables for your repository, at `https://travis-ci.(org|com)/<your-user-name>/<your-repo-name>/settings`:

- `DOCKER_PASSWORD`: your Docker Hub password
- `DOCKER_USERNAME`: your Docker Hub username
- `SERVER_URL`: your Docker Hub username

Your project is ready to run. Pushing on master will set up everything correctly on your server.