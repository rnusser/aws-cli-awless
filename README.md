# aws-cli-awless
A docker image containing just aws-cli and awless.

## Motive
I wanted to test AWS credentials in a clean environment, that would also work the same for Windows and Mac users, and without messing up my own setup.

Also awless is a great tool for quickly viewing aws resources. For example `awless list instances` will produce a niceley formated list of instances. Actually it's also a great tool for quickly doing anything, like adding roles etc.


## Build it
The image was built from the Dockerfile placed in the current directory like this:

`docker build -t silverfibre/aws-cli-awless .`

You can download the Dockerfile and do the same:

`docker built -t my-aws-cli .`


## Run it
You can also skip the build if you can trust the Dockerhub image and just run it:

`docker run -it -v ~/.aws/credentials:/root/.aws/credentials --rm silverfibre/aws-cli-awless`

I didn't give it a name as the container will be removed once it stops, or you exit it.

For credential testing I created a new credential file in my current directory, say my-credentials, and mapped the file in my current directory to the containers .aws/credentials file.

`docker run -it -v "$(pwd)"/my-credentials:/root/.aws/credentials --rm silverfibre/aws-cli-awless`



