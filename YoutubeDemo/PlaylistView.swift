//
//  PlaylistView.swift
//  YoutubeDemo
//
//  Created by Preet Karia on 4/19/24.
//

import SwiftUI

struct PlaylistView: View {
    let videoIDs: [String] = ["1vgOz10tSV4", "efjxmrAIobU", "6LxpMiMTjnU", "ZDb7hgF1JGs", "QeHm8rm6gjU"]

    var body: some View {
        Text("WWDC23")
            .font(.title)
            .bold()
            .padding()
        List(videoIDs, id: \.self) { videoID in
            VideoPlayer(videoID: videoID)
                .frame(height: 200)
                .cornerRadius(8)
                
        }.listStyle(.plain)
    }
}

#Preview {
    PlaylistView()
}
