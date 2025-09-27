//
//  WeatherFetch.swift
//  WeatherApp
//
//  Created by s s on 9/26/25.
//

import Foundation
import SnapKit

class WeatherFetch{
    
    private let urlQueryItems: [URLQueryItem] = [
        URLQueryItem(name: "lat", value: "37.5)"),
        URLQueryItem(name: "lon", value: "37.5"),
        URLQueryItem(name: "appid", value: "f57ab2ad3d1d33e78fd0c1df75b6aee0"),
        URLQueryItem(name: "units", value: "metric")
    ]
    
    private func FetchData<T: Decodable>(url: URL, completion: @escaping (T?) -> Void){
        

    }
    
    
}
