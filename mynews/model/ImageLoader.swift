//
//  imageLoader.swift
//  mynews
//
//  Created by user on 06/05/2020.
//

import Foundation
import Combine
import SwiftUI

class ImageLoader{
    //var didChange = PassthroughSubject<Data, Never>()
//    var data = Data() {
//        didSet {
//            didChange.send(data)
//        }
//    }
//    func load(urlString:String)-> Data? {
//        guard let url = URL(string: urlString) else { return }
//        let task = URLSession.shared.dataTask(with: url) { data, response, error in
//            guard let data = data else { return }
//            DispatchQueue.main.async {
//                return data
//            }
//        }
//        task.resume()
//
    func loadimage(with url: String?) -> UIImage? {
        var dat: Data = Data()
        if let ur = url{
            let u = URL(string: ur)
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: u!) { (data, response, error) in
                if error == nil{
                    DispatchQueue.main.async {
                        dat = data ?? Data()
                    }
                }
            }
            task.resume()
        }
        return UIImage(data: dat)
    }
}
