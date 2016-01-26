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

If you don't have any testcase files, you need to create and export it, using SeleniumIDE (Firefox Extension).

## Installation

```
Gofer new
  url:'http://smalltalkhub.com/mc/nymch/AutomaticParasol/main';
  package: 'ConfigurationOfAutomaticParasol';
   load.
(Smalltalk at: #ConfigurationOfAutomaticParasol) load.
```

and apply the patch (by @mumez).

```
pathToChangeSet := './patch/parasol-fixes-for-pharo40-mu.cs' asFileReference asAbsolute fullName .
ChangeSet fileIntoNewChangeSet: pathToChangeSet.
```

## Setup

1. Download Selenium Standalone Server from http://www.seleniumhq.org/ .
2. Run Selenium Standalone Server.

`java -jar ./selenium-server-standalone-2.xx.x.jar`

It's done. You are ready to run your testcases!

## Usage

### Run single testcase file

```
testCase := APTestCaseRunner testCaseFile: 'Test01'.
testCase run.
```

### Run multiple testcase files

```
testSuite := APTestSuiteRunner new.
testSuite addTestCase: 'path/to/Test01'.
testSuite addTestCase: 'path/to/Test02'.
testSuite run.
```

### Run testcase files under specified directory (Not yet working)

```
testSuite := APTestSuiteRunner new.
testSuite runAllIn: 'path/to/tests'.
```

More details will be provided later.