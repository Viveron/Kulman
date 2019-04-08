//
//  Apple.swift
//  Kulman
//
//  Created by Victor Shabanov on 22/01/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import Foundation
import CoreLocation

enum Apple: String, ExternalApplication {
    case phone  = "Phone"
    case maps   = "Maps"
    case itunes = "iTunes"
    
    var applink: String {
        switch self {
        case .phone:
            return "telprompt://"
            
        case .maps:
            return "http://maps.apple.com/"
            
        case .itunes:
            return "http://itunes.apple.com/ru/app/"
        }
    }
}

// MARK: - Available URL actions
extension Apple {
    
    static func phoneCallOpeningUrl(with phoneNumber: String) -> URL? {
        var url: URL? = nil
        
        let number = phoneNumber.replacingOccurrences(of: "\\D",
                                                      with: String.empty,
                                                      options: .regularExpression)
        if !number.isEmpty {
            url = URL(string: Apple.phone.applink + number)!
        }
        
        return url
    }
    
    static func mapsRouteOpeningUrl(to: CLLocationCoordinate2D) -> URL {
        var urlString = Apple.maps.applink + .query
        urlString += "daddr=\(to.latitude),\(to.longitude)"
        
        return URL(string: urlString)!
    }
    
    static func itunesAppOpeningUrl(with address: String) -> URL? {
        let urlString = Apple.itunes.applink + address
        
        return URL(string: urlString)!
    }
}

