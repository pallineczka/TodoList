//
//  LoginScreen.swift
//  MyTodoListUITests
//
//  Created by Tester Blue on 14/05/2022.
//

import Foundation

class LoginScreen: BaseScreen{
    private lazy var usernameTextField = app.textFields["usernameTextField"].firstMatch
    private lazy var passwordTextField = app.secureTextFields["passwordTextField"].firstMatch
    private lazy var loginButton = app.buttons["loginButton"].firstMatch
    private lazy var createAccountButton = app.buttons["createAccountButton"].firstMatch
    
    func tapCreateAccountButton(){
        createAccountButton.tap()
    }
    
}
