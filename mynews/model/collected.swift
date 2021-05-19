//
//  datafile.swift
//  mynews
//
//  Created by user on 06/05/2020.
//

import Foundation

struct collected: Decodable, Identifiable{
    var id: String{
        return name
    }
    let name: String
    let title: String
    let urlToImage: String
    let url : String
}
