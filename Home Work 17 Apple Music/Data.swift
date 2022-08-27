//
//  Data.swift
//  Home Work 17 Apple Music
//
//  Created by Артем Дербин on 27.08.2022.
//

import Foundation
import SwiftUI

struct Media: Identifiable, Hashable {
    let name: String
    let imageNames: String
    let id = UUID()
}
