//
//  TodoListScreen.swift
//  MyTodoListUITests
//
//  Created by Tester Blue on 14/05/2022.
//

import Foundation

class TodoListScreen: BaseScreen{
    private lazy var nothingTodoText = app.staticTexts["nothingTodoText"].firstMatch
    
    func isNothingTodoTextExist() -> Bool {
        nothingTodoText.exists
    }
}
