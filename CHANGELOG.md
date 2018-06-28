# Changelog

## 1.0.9 - 2018-06-28
- Fix: Fix buggy interaction with Jekyll's `where_exp` filter by rendering var and filter in context.

## 1.0.8 - 2015-05-21
- Fix: Previous regex was a bit too relaxed. It matched `||` when it should only match a single `|`.

## 1.0.7 - 2015-05-19
- Fix: Relaxed filters regex to fix issue with filter-tag.

## 1.0.6 - 2015-05-12
- Minor: Improvements to regex clarity.
- Minor: Using `parse` method instead of `new` for Liquid 3 compatibility.

## 1.0.5 - 2015-05-11
- Minor: Jekyll 3 is fine.

## 1.0.4 - 2015-03-24
- Fix: Assigning nil, null, or false to a variable caused an error.

## 1.0.3 - 2015-02-22
- Fix: Variables were being rendered to strings before being run through filters.

## 1.0.2 - 2014-08-20
- Support for changes in Jekyll 2.3.0.

## 1.0.1 - 2014-06-29
- Improved support for relative paths.

## 1.0.0 - 2014-06-29
- Initial release.
