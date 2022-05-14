//
//  CreateAccount.swift
//  MyTodoListUITests
//
//  Created by Tester Blue on 14/05/2022.
//

import Foundation
import XCTest

class CreateAccountTest: BaseTest{
    private lazy var createAccountScreen = CreateAccountScreen()
    private lazy var loginScreen = LoginScreen()
    private lazy var todoListScreen = TodoListScreen()
    
    func testCreateNewAccountCorrectly(){
        loginScreen.tapCreateAccountButton()
        createAccountScreen.enterUsername(text: "Test")
        createAccountScreen.enterPassword(text: "Tester123")
        createAccountScreen.enterRepeatPassword(text: "Tester123")
        createAccountScreen.tapCreateButton()
        
        XCTAssertTrue(todoListScreen.isNothingTodoTextExist(),"Nothing todo is not exists")
    }
    
    func testEmptyUsernameAlertIsExist(){
        loginScreen.tapCreateAccountButton()
        createAccountScreen.tapCreateButton()
        
        XCTAssertTrue(createAccountScreen.isUsernameAlertVisible(), "Alert is not exists")
    }
    
    func testEmptyPasswordAlertIsExist(){
        loginScreen.tapCreateAccountButton()
        createAccountScreen.enterUsername(text: "Test")
        createAccountScreen.tapCreateButton()
        
        XCTAssertTrue(createAccountScreen.isPasswordAlertVisible(), "Alert is not exists")
    }
    
    func testEmptyRepeatPasswordAlertIsExist(){
        loginScreen.tapCreateAccountButton()
        createAccountScreen.enterUsername(text: "Test")
        createAccountScreen.enterPassword(text: "Tester123")
        createAccountScreen.enterRepeatPassword(text: "Tester1234")
        createAccountScreen.tapCreateButton()
        
        XCTAssertFalse(createAccountScreen.isRepeatPasswordAlertVisible(), "Alert is not exists")
    }
    
}
