//
//  AppModel.swift
//  WWHReader
//
//  Created by wangweihu on 2020/8/4.
//

import Foundation

// ObservableObject 必须是类实现此协议
class AppModel: ObservableObject {
    var store = Store()
    var myAppName = "Weihu Wang Reader"

    struct Numbers: Decodable {
        let a: Float
        let b: Float
        let c: Float
    }

    func demo() {
//        let decoder = JSONDecoder()
//        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "+Infinity", negativeInfinity: "-Infinity", nan: "NaN")
//        let numbers = try! decoder.decode(Numbers.self, from: jsonData)
//        dump(numbers)
    }
}
