import XCTest

import mytoolTests

var tests = [XCTestCaseEntry]()
tests += mytoolTests.allTests()
XCTMain(tests)
