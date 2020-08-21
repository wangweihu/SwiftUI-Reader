//
//  ProfileView.swift
//  WWHReader
//
//  Created by wangweihu on 2020/8/6.
//

import SwiftUI

struct ProfileView: View {
    @State var results = [Ranking]()

    var body: some View {
        NavigationView {
            List(results, id: \._id) { item in
                NavigationLink(destination: RankingDetailView(id: item._id), label: {
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.headline)
                        Text(item.cover)
                    }
                })
            }
            .onAppear(perform: loadData)
            .navigationTitle("Profile")
        }
    }
}

extension ProfileView {
    func loadData() {
        let urlString = "http://api.zhuishushenqi.com/ranking/"
        guard let url = URL(string: urlString) else {
            fatalError("The url is vaild \(urlString)")
        }

        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data else {
                print("No data in response: \(error?.localizedDescription ?? "Unknown error").")
                return
            }
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                DispatchQueue.main.async {
                    // update our UI
                    self.results = decodedResponse.rankings
                }
            } else {
                print("Invalid response from server")
            }
        }.resume()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
