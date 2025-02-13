2.4.0 / 2020-05-05
==================

* Enable overriding transport Pass options when initializing Transport (<https://github.com/segmentio/analytics-ruby/pull/230>)


2.3.1 / 2020-04-13
==================

  * Add test option for easier testing (https://github.com/segmentio/analytics-ruby/pull/222)


2.3.0 / 2020-03-26
==================

  * [Improvement](https://github.com/segmentio/analytics-ruby/pull/225): Update timestamp for sub-millisecond reporting
  * Update supported Ruby versions (2.4, 2.5, 2.6, 2.7), remove unsupported Ruby versions (2.0, 2.1, 2.2, 2.3)

2.2.8 / 2020-02-10
==================

  * Promoted pre-release version to stable.

2.2.8.pre / 2019-11-29
==================

  * [Fix](https://github.com/segmentio/analytics-ruby/pull/212): Fix log message
    for stubbed requests
  * [Deprecate](https://github.com/segmentio/analytics-ruby/pull/209): Deprecate
    Ruby <2.0 support

2.2.7 / 2019-05-09
==================

  * [Fix](https://github.com/segmentio/analytics-ruby/pull/188): Allow `anonymous_id`
    in `#alias` and `#group`.

2.2.6 / 2018-06-11
==================

  * Promote pre-release version to stable.
  * [Fix](https://github.com/segmentio/analytics-ruby/pull/187): Don't assume
    all errors are 'ConnectionError's

2.2.6.pre / 2018-06-27
==================

  * [Fix](https://github.com/segmentio/analytics-ruby/pull/168): Revert 'reuse
    TCP connections' to fix EMFILE errors
  * [Fix](https://github.com/segmentio/analytics-ruby/pull/166): Fix oj/rails
    conflict
  * [Fix](https://github.com/segmentio/analytics-ruby/pull/162): Add missing
    'Forwardable' requirement
  * [Improvement](https://github.com/segmentio/analytics-ruby/pull/163): Better
    logging

2.2.5 / 2018-05-01
==================

  * [Fix](https://github.com/segmentio/analytics-ruby/pull/158): Require `version` module first.

2.2.4 / 2018-04-30
==================

  * Promote pre-release version to stable.

2.2.4.pre / 2018-02-04
======================

  * [Fix](https://github.com/segmentio/analytics-ruby/pull/147): Prevent 'batch
    size exceeded' errors by automatically batching
    items according to size
  * [Performance](https://github.com/segmentio/analytics-ruby/pull/149): Reuse
    TCP connections
  * [Improvement](https://github.com/segmentio/analytics-ruby/pull/145): Emit logs
    when in-memory queue is full
  * [Improvement](https://github.com/segmentio/analytics-ruby/pull/143): Emit logs
    when messages exceed maximum allowed size
  * [Improvement](https://github.com/segmentio/analytics-ruby/pull/134): Add
    exponential backoff to retries
  * [Improvement](https://github.com/segmentio/analytics-ruby/pull/132): Handle
    HTTP status code failure appropriately

2.2.3.pre / 2017-09-14
==================

  * [Fix](https://github.com/segmentio/analytics-ruby/pull/120): Override `respond_to_missing` instead of `respond_to?` to facilitate mock the library in tests.


2.2.2 / 2016-08-03
==================

  * adding commander as dep (for CLI)

2.2.1 / 2016-08-03
==================

  * add executables to spec

2.2.0 / 2016-08-03
==================

 * Adding an (experimental) CLI

2.1.0 / 2016-06-17
==================

 * Fix: Ensure error handler is called before Client#flush finishes.
 * Feature: Support setting a custom message ID.

2.0.13 / 2015-09-15
==================

 * readme: updated install docs
 * fix: page/screen to allow no name
 * git: ignore ruby version
 * travis-ci: remove old rubys

2.0.12 / 2015-01-10
==================

 * Fix batch being cleared and causing duplicates

2.0.11 / 2014-09-22
==================

 * fix: don't clear batch if request failed

2.0.10 / 2014-09-22
==================

 * Move timeout retry above output

2.0.9 / 2014-09-22
==================

 * Fix rescuing timeouts

2.0.8 / 2014-09-11
==================
* fix: add 3 ms to timestamp

2.0.7 / 2014-08-27
==================
* fix: include optional options hash in calls

2.0.6 / 2014-08-12
==================
* fix: category param on #page and #screen

2.0.5 / 2014-05-26
==================
* fix: datetime conversions

2.0.4 / 2014-06-11
==================
* fix: isofying trait dates in #group

2.0.3 / 2014-06-04
==================
* fix: undefined method `is_requesting?' for nil:NilClass when calling flush (#51)

2.0.2 / 2014-05-30
==================
* fix: formatting ios dates
* fix: respond_to? implementation
* add: able to stub requests by setting STUB env var

2.0.1 / 2014-05-15
==================
* add: namespace under SegmentIO::Analytics
* add: can create multiple instances with creator method (rather than
    having a singleton)
* add: logging with Logger instance or Rails.logger if available
* add: able to stub requests so they just log and don't hit the server
* fix: worker continues running across forked processes
* fix: removed usage of ActiveSupport methods since its not a dependency
* fix: sending data that matches segment's new api spec

(there is no v2.0.0)

1.1.0 / 2014-04-17
==================
* adding .initialized? by [@lumberj](https://github.com/lumberj)

1.0.0 / 2014-03-12
==================
* removing faraday dependency

0.6.0 / 2014-02-19
==================
* adding .group(), .page(), and .screen() calls
* relaxing faraday dependency, fixes #31

0.5.4 / 2013-12-31
==================
* Add `requestId` fields to all requests for tracing.

0.5.3 / 2013-12-31
==================
* Allow the consumer thread to shut down so it won't remain live in hot deploy scenarios. This fixes the jruby memory leak by [@nirvdrum](https://github.com/nirvdrum)

0.5.2 / 2013-12-02
==================
* adding `sleep` backoff between connection retries

0.5.1 / 2013-11-22
==================
* adding retries for connection hangups

0.5.0 / 2013-10-03
==================
* Removing global Analytics constant in favor of adding it to our config. NOTE: If you are upgrading from a previous version and want to continue using the `Analytics` namespace, you'll have to add `Analytics = AnalyticsRuby` to your config. Otherwise you WILL NOT be sending analytics data. See the [setup docs for more info](https://segment.io/libraries/ruby)

0.4.0 / 2013-08-30
==================
* Adding support and tests for 1.8.7

0.3.4 / 2013-08-26
==================
* Pass `Time` values as iso8601 timestamp strings

0.3.3 / 2013-08-02
==================
* Allow init/track/identify/alias to accept strings as keys. by [@shipstar](https://github.com/shipstar)

0.3.2 / 2013-05-28
==================
* Adding faraday timeout by [@yanchenyun](https://github.com/yangchenyun)

0.3.1 / 2013-04-29
==================
* Adding check for properties to be a Hash

0.3.0 / 2013-04-05
==================
* Adding alias call

0.2.0 / 2013-03-21
==================
* Adding flush method

0.1.4 / 2013-03-19
==================
* Adding ClassMethods for more extensibility by [arronmabrey](https://github.com/arronmabrey)

0.1.3 / 2013-03-19
==================
* Fixing user_id.to_s semantics, reported by [arronmabrey](https://github.com/arronmabrey)
* Reduced faraday requirements by [arronmabrey](https://github.com/arronmabrey)

0.1.2 / 2013-03-11
==================
* Fixing thrown exception on non-initialized tracks thanks to [sbellity](https://github.com/sbellity)

0.1.1 / 2013-02-11
==================
* Updating dependencies
* Adding actual support for MultiJson 1.0

0.1.0 / 2013-01-22
==================
* Updated docs to point at segment.io

0.0.5 / 2013-01-21
==================
* Renaming of all the files for proper bundling usage

0.0.4 / 2013-01-17
==================
* Updated readme and install instruction courtesy of [@zeke](https://github.com/zeke)
* Removed typhoeus and reverted to default adapter
* Removing session_id in favor of a single user_id

0.0.3 / 2013-01-16
==================
* Rakefile and renaming courtesy of [@kiennt](https://github.com/kiennt)
* Updated tests with mocks
