//
//  ApiHelper.swift
//  MoviesApp
//
//  Created by Mahmoud on 9/29/18.
//  Copyright © 2018 Mahmoud. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
class ApiHelper<T:BaseModel>{
    func getData( method: HTTPMethod, apiReq:String  ,parameters:[String:Any],delegate:@escaping (T)->Void){
        
        let url = Constants.baseUrl + apiReq
        let headers:[String:String] = ["" : "" , "" :""]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: headers).responseObject {
            (response: DataResponse<T>)  in
            guard let result = response.result.value else{
                
                return
            }
            delegate(result)
        }
    }
    
}
