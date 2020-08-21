//
//  RankingDetailView.swift
//  WWHReader
//
//  Created by wangweihu on 2020/8/11.
//

import SwiftUI

struct RankingDetailView: View {
    @State var books = [Book]()

    var id: String

    var body: some View {
        List(books, id: \._id) { item in
            NavigationLink(destination: RankingDetailView(id: item._id), label: {
                VStack(alignment: .leading) {
                    Text(item.title)
                        .font(.headline)
                    Text(item.majorCate)
                }
            })
        }
        .onAppear(perform: loadData)
        .navigationTitle("Profile")
    }
}

extension RankingDetailView {
    func loadData() {
        var urlString = "http://api.zhuishushenqi.com/ranking/"
        urlString.append(self.id)
        
        guard let url = URL(string: urlString) else {
            fatalError("The url is vaild \(urlString)")
        }

        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data else {
                print("No data in response: \(error?.localizedDescription ?? "Unknown error").")
                return
            }
            if let decodedResponse = try? JSONDecoder().decode(RankingResponse.self, from: data) {
                DispatchQueue.main.async {
                    // update our UI
                    self.books = decodedResponse.ranking.books
                }
            } else {
                print("Invalid response from server")
            }
        }.resume()
    }
}

struct RankingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RankingDetailView(id: "")
    }
}
