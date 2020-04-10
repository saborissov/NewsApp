//
//  Article.swift
//  NewsApp
//
//  Created by Mac on 05.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation

struct Article {
    var author: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
    var publishedAt: String
    var sourceName: String
    var content:String
    
    init(dictionary:Dictionary<String,Any>) {
        author = dictionary["author"] as? String ?? ""
        title = dictionary["title"] as? String ?? ""
        description = dictionary["description"] as? String ?? ""
        url = dictionary["url"] as? String ?? ""
        urlToImage = dictionary["urlToImage"] as? String ?? ""
        publishedAt = dictionary["publishedAt"] as? String ?? ""
        sourceName = (dictionary["source"] as? Dictionary<String,Any> ?? ["":""])["name"] as? String ?? ""
        content = dictionary["content"] as? String ?? ""
        
    }
}
