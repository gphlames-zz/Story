//
//  DetailView.swift
//  mynews
//
//  Created by user on 06/05/2020.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        webview(url: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "")
    }
}
