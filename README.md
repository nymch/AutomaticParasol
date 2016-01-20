# AutomaticParasol

Running SeleniumIDE-Generated Tests in Pharo Smalltalk.

## Introduction

AutomaticParasol is web testing framework for Pharo Smalltalk.
AutomaticParasol can run directly SeleniumIDE-Generated tests using Selenium WebDriver from Pharo Smalltalk (with Beach Parasol).

## Features

- Run Selenium-IDE Generated JUnit4 Testcase
- Run multiple testcases at once

## Requirements

- Mozilla Firefox Web Browser
- Selenium Standalone Server
- SeleniumIDE (Firefox Extension)

## Installation

(Temporary)

```
Gofer new
url:'http://smalltalkhub.com/mc/nymch/AutomaticParasol/main';
  package: 'ConfigurationOfAutomaticParasol';
  load.
(Smalltalk at: #ConfigurationOfAutomaticParasol) load.
```

## Usage

### Run single testcase file

```
testCase := APTestCaseRunner loadTestCaseFile: 'Test01'.
testCase run.
```

### Run multiple testcase files

```
testSuite := APTestSuite new.
testSuite addTestCase: 'path/to/Test01'.
testSuite addTestCase: 'path/to/Test02'.
testSuite run.
```

### Run testcase files under specified directory (Not yet working)

```
testSuite := APTestSuite new.
testSuite runAllIn: 'path/to/tests'.
```

More details will be provided later.
