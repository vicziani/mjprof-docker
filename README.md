# Docker image for mjprof

[mjprof](https://github.com/AdoptOpenJDK/mjprof) is a Monadic jstack analysis tool set.

This is a Docker image to run it.

For example:

```
docker run --rm -i vicziani/mjprof tree < jstack_output
```