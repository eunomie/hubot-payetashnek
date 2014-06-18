# Hubot Paye Ta Shnek script

A little script to get quotes from [Paye ta shnek](http://payetashnek.tumblr.com/).

[![Build Status](https://travis-ci.org/eunomie/hubot-payetashnek.png)](https://travis-ci.org/eunomie/hubot-payetashnek) [![NPM version](https://badge.fury.io/js/hubot-payetashnek.png)](http://badge.fury.io/js/hubot-payetashnek)

## Usage

Returns the last quote or a random one.

* `robot paye ta shnek`: returns the last one
* `robot shnek`: returns a random one


* [cheerio](https://github.com/MatthewMueller/cheerio)
* [he](https://github.com/mathiasbynens/he)

## Installation

Add the package `hubot-payetashnek` as a dependency in your Hubot `package.json` file.

    "dependencies": {
      "hubot-payetashnek": "0.1.1"
    }

Run the following command to make sure the module is installed.

    $ npm install hubot-payetashnek

To enable the script, add the `hubot-payetashnek` entry to the `external-scripts.json` file (you may need to create this file).

    ["hubot-payetashnek"]
