//
//  NewToDo.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDo: View {
    @Binding var showNewTask: Bool
    @Bindable var ToDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        
        
        
        VStack {
            Text("Task Title:")
                .fontWeight(.bold)
            TextField("Enter the task description...", text: $ToDoItem.title)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: $ToDoItem.isImportant) {
                Text("Is it important?")
            }
            Button {
                addToDo()
                showNewTask = false
                
            } label: {
                Text("Save")
            }
        }//end of vstack
        .padding()
    
    func addToDo() {
        let toDo = ToDoList.ToDoItem(title: ToDoItem.title, isImportant: ToDoItem.isImportant)
            modelContext.insert(toDo)
        }
        }
    
    
        
    }


#Preview {
    NewToDo(showNewTask: .constant(false), ToDoItem:
                ToDoItem: "", isImportant: false))
}
