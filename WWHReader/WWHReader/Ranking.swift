//
//  Ranking.swift
//  WWHReader
//
//  Created by wangweihu on 2020/8/11.
//

import SwiftUI

struct Response: Codable {
    var ok: Bool
    var rankings: [Ranking]
}

struct RankingResponse: Codable {
    var ok: Bool
    var ranking: RankingDetail
}

struct Book: Codable {
    let _id: String
    let title: String
    let majorCate: String
    let shortIntro: String
    let minorCate: String
    let site: String
    let author: String
    let cover: String
    let retentionRatio: String
    let allowMonthly: Bool
    let banned: Int
    let latelyFollower: Int
}

struct RankingDetail: Codable {
    let _id: String
    let title: String
    let cover: String
    let books: [Book]
}

struct Ranking: Codable {
    let _id: String
    let title: String
    let cover: String
}
