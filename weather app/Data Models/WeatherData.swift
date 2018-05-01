//
//  WeatherData.swift
//  weather app
//
//  Created by Keano Bellmore on 5/1/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class WeatherData {
    var weatherEmoji: String
    var currentTemp: Int
    var highTemp: Int
    var lowTemp: Int
    
    // clear-day, clear-night, rain, snow, sleet, wind, fog, cloudy, partly-cloudy-day, partly-cloudy-night, hail, thunderstorm, or tornado
    
    init(json: JSON) {
        self.currentTemp = Int(json["currently"]["temperature"].doubleValue)
        self.highTemp = Int(json["daily"]["data"][0]["temperatureHigh"].doubleValue)
        self.lowTemp = Int(json["daily"]["data"][0]["temperatureLow"].doubleValue)
        var weatherIcon = json["currently"]["icon"].stringValue
        
        switch weatherIcon {
        case "clear-day":
            self.weatherEmoji = "☀️"
        case "clear-night":
            self.weatherEmoji = "🌙"
        case "rain":
            self.weatherEmoji = "🌧"
        case "snow":
            self.weatherEmoji = "❄️"
        case "sleet":
            self.weatherEmoji = "💧"
        case "wind":
            self.weatherEmoji = "💨"
        case "fog":
            self.weatherEmoji = "🌫"
        case "cloudy":
            self.weatherEmoji = "☁️"
        case "partly-cloudy-day":
            self.weatherEmoji = "⛅️"
        case "partly-cloudy-night":
            self.weatherEmoji = "🌑"
        case "hail":
            self.weatherEmoji = "🌨"
        case "thunderstorm":
            self.weatherEmoji = "🌩"
        case "tornado":
            self.weatherEmoji = "🌪"
        default:
            self.weatherEmoji = "🔙🔛🔝🔜"
        }
    
    }
    
}
