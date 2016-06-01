# r-lint
[![wercker status](https://app.wercker.com/status/a15133b876c59eb95934428ba9e0318c/m "wercker status")](https://app.wercker.com/project/bykey/a15133b876c59eb95934428ba9e0318c)

A step to generate coverage on an R package.  Forked from [Jim Hester](https://github.com/jimhester/wercker-step-r-coverage).  Best used with one of the
[inbobmk](https://hub.docker.com/u/inbobmk/) images.  Uploads the
coverage results to codecov.io.

In order for this to work you need to set a protected environment variable
`CODECOV_TOKEN` in your wercker project settings.

```yaml
    - inbobmk/r-codecov
```

# License

The MIT License (MIT)

Copyright (c) 2015 Jim Hester

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Changelog

## 0.0.6

- use R CMD BATCH instead of Rscript

## 0.0.5
- don't silence codecov()

## 0.0.4
- assume that the `covr` package is allready installed

## 0.0.3
- Use run_script function

## 0.0.2
- Always install github covr prior to running, and install devtools if needed.

## 0.0.1
- initial release
