# Docker image for samtools software package
## ime_samtools
This repository contains the Dockerfile to create a docker image for the samtools software package.

## Usage of this docker image
Calling `samtools` is the default entrypoint of this image. The parameter `--help` is the default command. Therefore, running the image will result in a call of `samtools --help` within the folder `/data`.
### Data im-/export
The working directory `/data` is defined as a volume and can be used for data im- and export while using this image.

## Current version
The current version is samtools [![](https://images.microbadger.com/badges/version/greatfireball/ime_samtools:v1.3.1.svg)](https://microbadger.com/images/greatfireball/ime_samtools:v1.3.1 "Get your own version badge on microbadger.com").

| Version tag/branch | Size | Commit |
|-|-|-|
| [![](https://images.microbadger.com/badges/version/greatfireball/ime_samtools:v1.3.1.svg)](https://microbadger.com/images/greatfireball/ime_samtools:v1.3.1 "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/greatfireball/ime_samtools:v1.3.1.svg)](https://microbadger.com/images/greatfireball/ime_samtools:v1.3.1 "Get your own image badge on microbadger.com") | [![](https://images.microbadger.com/badges/commit/greatfireball/ime_samtools:v1.3.1.svg)](https://microbadger.com/images/greatfireball/ime_samtools:v1.3.1 "Get your own commit badge on microbadger.com") |
| [![](https://images.microbadger.com/badges/version/greatfireball/ime_samtools:master.svg)](https://microbadger.com/images/greatfireball/ime_samtools:master "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/greatfireball/ime_samtools:master.svg)](https://microbadger.com/images/greatfireball/ime_samtools:master "Get your own image badge on microbadger.com") | [![](https://images.microbadger.com/badges/commit/greatfireball/ime_samtools:master.svg)](https://microbadger.com/images/greatfireball/ime_samtools:master "Get your own commit badge on microbadger.com") |

## All tags
All tags are listed on the [docker hub page](https://hub.docker.com/r/greatfireball/ime_samtools/tags/). Versions with a tags are:
- v1.2
- v1.3
- v1.3.1

## Further information
Further documentation about samtools can be found on the [official site](http://www.htslib.org/doc/samtools.html)
