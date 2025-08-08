//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State private var showNewTask = false
    @Query var ToDos: [ToDoItem]
    
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                    showNewTask = true
                    
                }label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }//hstack
            
            
            
            Spacer()
            
            List{//display lists of tasks
                ForEach(ToDos) { toDoItem in
                    Text(toDoItem.title)
                    
                }
            }
        
            if showNewTask {
                NewToDo()
            }
            
        }//vstack
        .padding()
    }//someview
}//contentview

#Preview {
    ContentView()
}
