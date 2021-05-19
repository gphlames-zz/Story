//
//  collectedplus.swift
//  mynews
//
//  Created by user on 06/05/2020.
//

import Foundation
import SwiftUI

struct collectedPlus: Identifiable{
    var id: String{
        return name
    }
    var uiimage: UIImage = UIImage()
    let name: String
    let title: String
    let url : String
}
