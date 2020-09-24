# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [0.6.0] - 2020-09-24

- The `youtube` liquid tag was updated to ease CSS customization and styling;
- Add `localize` filter to translate keys to localized strings;
- The `spotify` liquid tag was removed as it was to complicated to localize nicely. If you're interested in creating your one, a version localized in French can be found on the [DeadRooster/deadrooster.org][1] repository.

## [0.5.0] - 2020-04-19

- Add youtube liquid tag
- Add spotify liquid tag
- Default Ruby version is now 2.6.3
- Add linting

## [0.4.3] - 2017-10-20

### Changed

- Updated version number in the gemspec as Travis was failing

## [0.4.2] - 2017-10-19

### Changed

- Depending on liquid 4 for compatibility with Jekyll 3.6.0

## About Older Versions

Older versions of this package were evolving at a really high pace.
The package was not stable enough and maintaining a Changelog would have a real pain in the butt.

[0.6.0]: https://github.com/dirtyhenry/buckygem/compare/0.5.0...0.6.0
[0.5.0]: https://github.com/dirtyhenry/buckygem/compare/0.4.3...0.5.0
[0.4.3]: https://github.com/dirtyhenry/buckygem/compare/0.4.2...0.4.3
[0.4.2]: https://github.com/dirtyhenry/buckygem/compare/0.4.1...0.4.2
[1]: https://github.com/DeadRooster/deadrooster.org/blob/master/_plugins/spotify_tag.rb
