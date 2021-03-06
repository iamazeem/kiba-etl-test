# kiba-etl-test

[![ci](https://github.com/iamazeem/kiba-etl-test/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/iamazeem/kiba-etl-test/actions/workflows/ci.yml)

Just a simple [CSV](https://en.wikipedia.org/wiki/Comma-separated_values)
[ETL](https://en.wikipedia.org/wiki/Extract,_transform,_load) test using
[Ruby](https://en.wikipedia.org/wiki/Ruby_(programming_language)) and
[Kiba](https://github.com/thbar/kiba)!

[Rakefile](Rakefile) would be the starting point to read the code.

The `item` field is transformed to lowercase; and, the `price` field is
transformed to integer from float and then multiplied by 2.

Source:

```shell
$ cat data/source.csv 
id,item,price
1,ABC,6.00
2,XYZ,3.00
```

Destination:

```shell
$ cat data/destination.csv 
id,item,price
1,abc,12
2,xyz,6
```

Written and tested on:

- Ubuntu 20.04
- Ruby 2.7.2p137

## Set up

Clone:

```shell
git clone github.com:iamazeem/kiba-etl-test.git
```

Install dependencies:

```shell
bundle install
```

## Run

```shell
bundle exec rake test
```

See input and output files under [data](data) directory.

## License

[MIT](./LICENSE)
