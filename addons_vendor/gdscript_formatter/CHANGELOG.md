# Changelog

This file documents the changes made to the formatter with each release. This project uses [semantic versioning](https://semver.org/spec/v2.0.0.html).

## Release 0.7.0 (2025-09-19)

This release improves formatting consistency for dictionaries, arrays, and function parameters, and fixes several edge cases related to variable declarations and class definitions.

### Added

- Space after comma between types in typed dictionary type hints
- Space after the opening brace and before closing braces of single line dictionaries
- Trailing commas in arrays, dictionaries, enums, and function parameters
- New line before enums closing brace
- Removed trailing comma in singleline arrays/dictionaries/enums/functions

### Fixed

- Variable declaration after function getting placed inside function (or class)
- Incorrect formatting when a declaration immediately follows an extends statement in an inner class

## Release 0.6.0 (2025-09-19)

This release improves formatting consistency and fixes several edge cases related to spacing, comments, and function/class definitions.

### Added

- Space after commas in setter and getter declarations
- Two blank lines before annotated functions

### Changed

- Improved the detection and removal of dangling semicolons
- Removed unnecessary topiary rule for `@tool` annotations

### Fixed

- Functions with a single statement on a single line (e.g., `func a(): pass`) being incorrectly merged with the following function
- Class definitions placed next to one another losing line breaks between them
- Inline comments after annotations being misplaced
- Comments in arrays and dictionaries being incorrectly formatted in some cases
- Comments in enums being misaligned in some cases

## Release 0.5.1 (2025-09-18)

This release fixes critical bugs that could cause data loss during formatting.

### Added

- Formatting support for pattern guards (syntax: `a when b:`)
- Test cases for string literals to prevent regressions

### Changed

- Added warning in README about using version control systems when formatting code to prevent data loss

### Fixed

- StringName strings (`&"TextHere"`) being erased during formatting
- NodePath strings (`^"Path/To/Node"`) being erased during formatting

## Release 0.5.0 (2025-09-18)

This release greatly improves the performance of the formatter, which makes it feel even snappier than before. The time to format is divided by up to 2.

### Added

- Support for multiline function calls with correct indentation
- Option to reorder GDScript code according to the official style guide
- Benchmark script to test the formatter's performance on small and large files (run `cargo run --bin benchmark --release`)

### Changed

- Updated GDScript tree-sitter parser and tree-sitter library to the latest version, bringing a big performance improvement (up to 30%)
- Optimized release builds with lto compile flags (this brings a 10-20% speed improvement)
- Improved vertical spacing between class-level declarations to add two lines even if there are docstrings
- Improved module documentation and docstrings
- Vertical spacing logic to account for multi-line comments/docstrings before definitions
- Refactored formatter to use more idiomatic Rust (the formatter is now a struct and multiline module comments are docstrings)
- `gdscript-format` is now the default binary for `cargo run`

### Fixed

- Loss of node names/paths in `%` and `$ get_node` syntaxes
- Leading space before `not` being lost during formatting in the expression `not in`
- Line continuation markers being lost upon formatting
- Incorrect GitHub URLs in README (#15)

## Release 0.4.0 (2025-09-10)

### Fixed

- Trailing comments at the end of functions were being wrapped on a new line. They're now preserved at the end of the function line.

### Changed

- Updated to latest version of the GDScript parser with adapted queries for new body node in setters and getters
- Added test case for trailing comments at the end of functions to ensure correct formatting

## Release 0.3.0 (2025-09-04)

### Added

- Print the help message if there are no arguments or piped input

### Fixed

- Semicolons: wrap statements on multiple lines when needed, preserve indentation in code blocks
- Inline comments after colons wrapping on another line

### Changed

- Make tests run much 3 to 4x faster and greatly improve output diff
- Use cargo configuration to strip debug symbols from release binaries

## Release 0.2.0 (2025-08-23)

### Added

- Support for multi-line wrapping of function parameters with extra indentation
- Spacing around the "as" keyword

### Changed

- Formatter now overwrites formatted files by default instead of outputting to stdout
- Added option to output to stdout when needed
- Version number is now read directly from Cargo.toml at build time

## Release 0.1.0 (2025-08-21)

This is the initial release of the GDScript formatter.

### Added

- Support for many GDScript formatting rules:
  - Consistent spacing between operators, keywords, and after commas in most cases
  - Single and multi-line formatting for arrays and dictionaries
  - Consistent indentation for blocks, function definitions, and control structures
  - Enforces blank lines between functions and classes
- Configuration option for indentation (spaces or tabs)
- Test suite with input/expected file pairs (run with `cargo test`)
- Cross-platform support (Linux, macOS, Windows) and automated builds with GitHub Actions
