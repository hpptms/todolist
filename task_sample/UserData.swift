//
//  UserData.swift
//  task_sample
//
//  Created by 冨田卓考 on 2021/12/30.
//

import Foundation

class UserData: ObservableObject{
    @Published var tasks = [
        Task(title: "aaa",cheaked: true),
        Task(title: "bbb",cheaked: false),
        Task(title: "ccc",cheaked: true)
        
    ]
    
    @Published var isEditing: Bool = false
}
