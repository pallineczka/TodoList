//
//  CreateAccountView.swift
//  MyTodoListUITests
//
//  Created by Tester Blue on 14/05/2022.
//

import Foundation

class CreateAccountScreen: BaseScreen{
    //MARK: ELEMENTS
    private lazy var usernameTextField = app.textFields["usernameTextField"].firstMatch
    private lazy var passwordTextField = app.secureTextFields["passwordTextField"].firstMatch
    private lazy var repeatPasswordTextField = app.secureTextFields["repeatPasswordTextField"].firstMatch
    private lazy var createButton = app.buttons["createButton"].firstMatch
    private lazy var createAccountAlert = app.alerts
    
    //MARK: ACTIONS
    func enterUsername(text: String) {
        usernameTextField.tap()
        usernameTextField.typeText(text)
    }
    
    func enterPassword(text: String){
        passwordTextField.tap()
        passwordTextField.typeText(text)
    }
    
    func enterRepeatPassword(text: String){
        repeatPasswordTextField.tap()
        repeatPasswordTextField.typeText(text)
    }
    
    func tapCreateButton(){
        createButton.tap()
    }
    
    func isUsernameAlertVisible() -> Bool{
        let alertText = "Username cannot be empty"
        return createAccountAlert.staticTexts[alertText].exists
    }
    
    func isPasswordAlertVisible() -> Bool{
        let alertText = "Password cannot be empty"
        return createAccountAlert.staticTexts[alertText].exists
    }
    
    func isRepeatPasswordAlertVisible() -> Bool{
        let alertText = "Passwords do not match"
        return createAccountAlert.staticTexts[alertText].exists
    }
}
