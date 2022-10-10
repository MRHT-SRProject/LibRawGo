# LibRawGo

A wrapper around [libraw](https://www.libraw.org/) written for [GO](https://golang.google.cn) using [SWIG](https://swig.org)
Currently tested on 

- Linux (64bit)



## Getting Started

These instructions will give you a copy of the project up and running on
your local machine for development and testing purposes.

* fork the repository
* clone a local copy
* make changes
* submit a PR

### Prerequisites

LibRawGo depends on having the correct version of libraw installed on your system. Currently it is tested with [v0.20.0](https://github.com/LibRaw/LibRaw/releases/tag/0.20.0)

Most linux distros have this version available on their package manager. If not you can build a copy and install it.

### Installing

To include this library in your go project, install it by running `go install github.com/MRHT-SRProject/LibRawGo/librawgo` and include it in your project. Or include `github.com/MRHT-SRProject/LibRawGo` in your project and run `go mod tidy`

### Usage

This wrapper wraps the C API for libraw. See their [documentation](https://www.libraw.org/docs/API-C.html) for more usage details.

```go
package libraw

import (
	raw "github.com/MRHT-SRProject/LibRawGo/librawgo"
)

func TestLibRaw() **uint16 {
	lr := raw.Libraw_init(0)
	raw.Libraw_open_file(lr, "/home/rich/code/camcapture/libraw/city.ARW")
	return lr.GetImage()
}
```

## Running the tests

**TODO**

### Sample Tests

**TODO**

### Style test

**TODO**


## Built With

  - [SWIG](https://swig.org)


## Versioning

We use [Semantic Versioning](http://semver.org/) for versioning. All production versions start at `1.x` and the sub-versions match the version of `libraw`. For the versions
available, see the [tags on this
repository](https://github.com/PurpleBooth/a-good-readme-template/tags).



## Authors

- **Richard Baird**

See also the list of
[contributors](#)
who participated in this project.

## License

This project is licensed under the [MIT](LICENSE.md)
License - see the [LICENSE.md](LICENSE.md) file for
details

## Acknowledgments

  - [libraw](https://libraw.org/) for writing such a useful library!
  - **Billie Thompson** - *Provided README Template* -
    [PurpleBooth](https://github.com/PurpleBooth)

