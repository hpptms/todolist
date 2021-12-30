//
//  task_sampleApp.swift
//  task_sample
//
//  Created by 冨田卓考 on 2021/12/30.
//

import SwiftUI

@main
struct task_sampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserData())
        }
    }
}
