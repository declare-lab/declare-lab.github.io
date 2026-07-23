#!/bin/bash
cd "$(dirname "$0")/.."
export JEKYLL_NO_BUNDLER_REQUIRE=true
unset BUNDLE_GEMFILE
exec /Users/poriasoujanya/.gem/ruby/3.4.1/bin/jekyll serve --port 4011
