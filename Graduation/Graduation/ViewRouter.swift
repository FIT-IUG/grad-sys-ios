//
//  ViewRouter.swift
//  Graduation
//
//  Created by Ali Jaradah on 3/1/20.
//  Copyright © 2020 Ali Jaradah. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter: ObservableObject {
    
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    
    var currentPage: String = "page1" {
        didSet {
            objectWillChange.send(self)
        }
    }
}

