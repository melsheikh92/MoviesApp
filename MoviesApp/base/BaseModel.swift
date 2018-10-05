//
//  BaseModel.swift
//  MoviesApp
//
//  Created by Mahmoud on 9/29/18.
//  Copyright © 2018 Mahmoud. All rights reserved.
//

import Foundation
import ObjectMapper
class BaseModel: Mappable{
    var page:Int?
    var totalResult:Int?
    var totalPages:Int? 
    
    
    var isSuccess:Bool?
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        page <- map["page"]
        totalPages <- map["total_pages"]
        totalResult <- map["total_results"]
    }
    
    
    
    
    
}
