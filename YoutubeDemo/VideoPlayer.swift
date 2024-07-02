//
//  VideoPlayer.swift
//  YoutubeDemo
//
//  Created by Preet Karia on 4/19/24.
//

import SwiftUI
import WebKit

struct VideoPlayer: UIViewRepresentable {
    let videoID: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        if let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") {
            webView.load(URLRequest(url: youtubeURL))
        }
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

#Preview {
    VideoPlayer(videoID: "SWIeIhaz0-o")
        .frame(maxHeight: 300)
        
}
