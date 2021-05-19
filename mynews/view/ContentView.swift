//
//  ContentView.swift
//  mynews
//
//  Created by user on 06/05/2020.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var network = networkManager()
    //@State var image:UIImage = UIImage()
   
    var body: some View {
        NavigationView{
            List(network.coll){ post in
                
                NavigationLink(
                    destination: DetailView(url: post.url)){
                    VStack{
//                        Image(uiImage: post.uiimage)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width:150, height:150)
                        RoundedRectangle(cornerRadius: 5)
                            .overlay(HStack{
                                Text(post.title)
                            })
                            //.offset(x: 20)
                    }
                }
                Divider()
                
            }
            onAppear(){
                network.fetchData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
