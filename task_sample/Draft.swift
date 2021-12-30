//
//  Draft.swift
//  task_sample
//
//  Created by 冨田卓考 on 2021/12/30.
//

import SwiftUI

struct Draft: View {
    @State var taskTitle = ""
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        TextField("タスクを入力してください", text: $taskTitle,
                  onCommit: {
            self.createTask()
            self.userData.isEditing = false
        })
    }
    
    func createTask(){
        let newTask = Task(title: self.taskTitle, cheaked: false)
        self.userData.tasks.insert(newTask, at: 0)
        self.taskTitle = ""
    }
}



struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
    }
}
