//
//  TODORow.swift
//  TODO
//
//  Created by Sebastian Esser on 9/19/19.
//  Copyright © 2019 Sebastian Esser. All rights reserved.
//

import SwiftUI

struct TODORowView: View {
    
    var todo: TODOS
    
    var body: some View {
        HStack {
            Text(todo.todo)
            
            Spacer()
            
            if todo.isComplete == "true" {
                Image(systemName: "checkmark").imageScale(.medium)
            } else {
                Image(systemName: "xmark").imageScale(.medium)
            }
        }
    }
}

struct TODORowView_Previews: PreviewProvider {
    static var previews: some View {
        TODORowView(todo: TODOS(todo: "Buy milk", isComplete: "false"))
    }
}
