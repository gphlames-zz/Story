//
//  networkManager.swift
//  mynews
//
//  Created by user on 06/05/2020.
//

import Foundation
import SwiftUI

class networkManager: ObservableObject{
    @Published var coll = [collected]()
    //@Published var colll = [collectedPlus]()
    let urlcollected = ["https://newsapi.org/v2/top-headlines?country=us&apiKey="]
    
    func fetchData(){
        for i in urlcollected{
            let url = URL(string: i)
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url!) { [self] (data, response, error) in
                if error == nil{
                    if let safedata = data{
                        let decoder = JSONDecoder()
                        do {
                            let result = try decoder.decode(collectedData.self, from: safedata)
                            DispatchQueue.main.async {
                                coll = result.posts
                            }
                            //                            for e in result.posts{
                            //                                var c = collectedPlus(name: e.name, title: e.title, url: e.url)
                            //                                //let imag = fetchImages(with: e.urlToImage)
                            //                                if let ima = imag{
                            //                                    c.uiimage = ima
                            //                                    DispatchQueue.main.async {
                            //                                        self.colll.append(c)
                            //                                    }
                            //                                }
                            
                        }
                        catch{
                            
                        }
                    }
                    else{
                        print(error!)
                    }
                }
            }
             task.resume()
        }
        func fetchImages(with url: String?) -> UIImage? {
            
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
}
