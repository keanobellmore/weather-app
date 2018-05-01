//
//  ApiManager.swift
//  weather app
//
//  Created by Keano Bellmore on 4/30/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class ApiManager {
    
    var shared = ApiManager()
    var apiKeys = ApiKeys()
    
    private let darkSkybaseURL = "https://api.darksky.net/forecast"
    
    private let googleBaseURL = "https://maps.googleapis.com/maps/api/geocode/json?address="
    
    func getWeather(latitude: Double, longitude: Double, onSuccess: @escaping(WeatherData) -> Void, onError: @escaping (Error) -> Void) {
        var url = "\(darkSkybaseURL)\(apiKeys.darkSkyKey)"
       var request = Alamofire.request(, method: .get, parameters: , encoding: , headers: )
    }
    
}
