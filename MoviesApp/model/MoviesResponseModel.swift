//
//  MoviesResponseModel.swift
//  MoviesApp
//
//  Created by Mahmoud on 9/29/18.
//  Copyright © 2018 Mahmoud. All rights reserved.
//

import Foundation
import ObjectMapper
class MoviesResponseModel : BaseModel{
    
    
    var data:[MovieModel]?
    override func mapping(map: Map) {
        super.mapping(map: map)
        data <- map["result"]
    }
    
}
