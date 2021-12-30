//
//  UserTask.swift
//  task_sample
//
//  Created by 冨田卓考 on 2021/12/30.
//

import SwiftUI

struct Task: Identifiable,Equatable {
    let id = UUID()
    var title : String
    var cheaked : Bool
    
    init(title: String, cheaked: Bool){
        self.title = title
        self.cheaked = cheaked
    }
}
