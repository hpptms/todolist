//
//  ContentView.swift
//  task_sample
//
//  Created by 冨田卓考 on 2021/12/30.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView{
            List {
                ForEach(userData.tasks){ task in
                    Button(action: {
                        guard let index = self.userData.tasks.firstIndex(of: task) else{
                            return
                        }
                        
                        self.userData.tasks[index].cheaked.toggle()
                    })
                    {
                        ListRow(task: task.title, isCheck: task.cheaked)
                    }
                }
                if self.userData.isEditing{
                    Draft()
                }else{
                    Button(action:{
                        self.userData.isEditing = true
                    })
                    {
                        Text("＋")
                            .font(.title)
                    }
                }
            }
            .navigationBarTitle(Text("Tasks"))
            .navigationBarItems(trailing: Button(action: {
                DeleteTask()
            })
            {
                Text("Delete")
            }
            )
        }
    }
    func DeleteTask() {
        let necessaryTask =
        self.userData.tasks.filter({!$0.cheaked})
        self.userData.tasks = necessaryTask
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
