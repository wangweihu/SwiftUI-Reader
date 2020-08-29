//
//  ProgressView.swift
//  WWHReader
//
//  Created by wangweihu on 2020/8/6.
//

import Foundation
import SwiftUI

struct ProgressViewDemo: View {
    @State private var downloadAmount = 0.0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

    var body: some View {
        VStack {
            // 使用ProgressView显示任务的进度
            ProgressView("Downloading…", value: downloadAmount, total: 100)
        }
        .onReceive(timer) { _ in
            if downloadAmount < 100 {
                downloadAmount += 2
            }
        }
    }
}

struct ProgressViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewDemo()
    }
}
