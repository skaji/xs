# XS samples


## Link

* http://xsubtut.github.io/

* https://metacpan.org/pod/ExtUtils::MakeMaker
* https://metacpan.org/pod/ExtUtils::MM_Unix
* https://metacpan.org/pod/Module::Build::API

## NOTE

* EU::MM だとトップディレクトリに xs ファイルがある前提
* M::B だと lib/Module/Path 以下に xs ファイルがある前提

* M::B, c_source にディレクトリをセットすると、include_dirs にも自動的にセットされる。
* M::B, xs_files には xs_file -> xs_file の形で指定する。C ファイルではない。
* ref: http://blog.64p.org/entry/2013/11/23/051945
