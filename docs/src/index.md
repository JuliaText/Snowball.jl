# Snowball

```@index
```

## Introduction

This package wraps the [Snowball stemming library](https://snowballstem.org/), originally developed by Dr Martin Porter. This package wraps the `v2.0.0` version of the library.

## Stemming algorithms

Currently, the following stemming algorithms are supported. The list of available
algorithms can be found by using the `stemmer_types()` function in the package. By default, the UTF-8 version of the stemmers are used, but the ISO_8859_1 versions are available in the underlying library if required.

```
arabic
basque
catalan
danish
dutch
english
finnish
french
german
greek
hindi
hungarian
indonesian
irish
italian
lithuanian
nepali
norwegian
porter
portuguese
romanian
russian
spanish
swedish
tamil
turkish
```

```@autodocs
Modules = [Snowball]
```
