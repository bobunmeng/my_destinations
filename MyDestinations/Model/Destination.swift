//
//  Destination.swift
//  MyDestinations
//
//  Created by Bo Bunmeng on 17/7/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import UIKit

struct Destination {
    // MARK: - PROPERTIES
    let name: String
    let city: String
    let country: String
    let images: [UIImage]
    let arrivalDate: Date?
    
    // MARK: - INITIALIZATION
    public init(name: String, city: String, country: String) {
        self.name = name
        self.city = city
        self.country = country
        self.images = []
        self.arrivalDate = nil
    }
    
    public init(name: String, city: String, country: String, images: [UIImage]) {
        self.name = name
        self.city = city
        self.country = country
        self.images = images
        self.arrivalDate = nil
    }
    
    public init(name: String, city: String, country: String, images: [UIImage], arrivalDate: Date) {
        self.name = name
        self.city = city
        self.country = country
        self.images = images
        self.arrivalDate = arrivalDate
    }
    
    // MARK: - METHODS / COMPUTED PROPERTIES
    public var thumbnail: UIImage? {
        return images.count > 0 ? images[0] : nil
    }
    
    public var address: String {
        return String(format: "%@, %@", city, country)
    }
    
}
