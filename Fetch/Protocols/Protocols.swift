//
//  Protocols.swift
//  Fetch
//
//  Created by Andrea on 7/8/23.
//

import Foundation
import Combine
import SwiftUI


//Production Data Service Protocol
protocol DataServiceProtocol {
    func getData() -> AnyPublisher <MealModel, Error>
}


