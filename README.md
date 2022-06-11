# dumb-pypi image

[![Docker Pulls](https://img.shields.io/docker/pulls/modem7/dumb-pypi)](https://hub.docker.com/r/modem7/dumb-pypi)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/modem7/dumb-pypi/latest)](https://hub.docker.com/r/modem7/dumb-pypi)
[![Build Status](https://drone.modem7.com/api/badges/modem7/docker-dumb-pypi/status.svg)](https://drone.modem7.com/modem7/docker-dumb-pypi)
[![GitHub last commit](https://img.shields.io/github/last-commit/modem7/docker-dumb-pypi)](https://github.com/modem7/docker-dumb-pypi)

Container image with dumb-pypi package.

## References

- `dumb-pypi` container image ([Docker Hub](https://hub.docker.com/r/modem7/dumb-pypi), [GitHub](https://github.com/modem7/docker-dumb-pypi))
- `dumb-pypi` package ([PyPi](https://pypi.org/project/dumb-pypi/), [GitHub](https://github.com/chriskuehl/dumb-pypi))

## Tags
| Tag | Description |
| :----: | --- |
| Latest | Latest version of Dumb-Pypi |
| 1.9.x | Specific versions of Dumb-Pypi |

## Instructions
[Example](https://github.com/modem7/PyPI/blob/gh-pages/build_borg_wheels.sh#L18-L20):
```
docker run --rm -v "$(pwd)":/data -w /data -it modem7/dumb-pypi sh -c 'dumb-pypi --package-list <(ls packages) \
   --packages-url https://raw.githubusercontent.com/modem7/PyPI/gh-pages/packages \
   --output-dir .'
```
