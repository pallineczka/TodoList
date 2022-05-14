//
//  BaseTest.swift
//  MyTodoListUITests
//
//  Created by Tester Blue on 14/05/2022.
//

import Foundation
import XCTest

class BaseTest: XCTestCase{
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        clearLocalData()
        app.launch()
        continueAfterFailure = false
    }
    
    override func tearDown() {
        super.tearDown()
        app.terminate()
    }
    
    func clearLocalData(){
        app.launchArguments.append("clearLocalData")
    }
}
