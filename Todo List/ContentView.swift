//
//  ContentView.swift
//  Todo List
//
//  Created by Allen Chou on 2023/6/22.
//

import SwiftUI

struct ContentView: View {
    @State private var currentTodo = ""
    @State private var todos: [Item] = []
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("New todo..", text: $currentTodo)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button(action: {
                        guard !self.currentTodo.isEmpty else { return }
                        self.todos.append(Item(todo: self.currentTodo))
                        self.currentTodo = ""
                    }) {
                        Image(systemName: "text.badge.plus")
                    }
                    .padding(.leading, 5)
                }.padding()
                
                List {
                    ForEach(todos) { todoEntry in
                        Text(todoEntry.todo)
                    }
                }
            }
            .navigationBarTitle("Todo List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
