//
//  Q.swift
//  RulerCompass
//
//  Created by Peter Shi on 2020-06-25.
//  Copyright © 2020 Peter Shi. All rights reserved.
//

import SwiftUI

struct Q: Identifiable {
    var id = UUID()
    var title: String
    var sTitle: String
    
}

let testData = [
    Q(title: "Line bisector", sTitle: "What am I doing here?"),
    Q(title: "Angle bisector", sTitle: "What am I doing here?"),
    Q(title: "Perpendicular through a line", sTitle: "What am I doing here?"),
    Q(title: "Perpendicular through a point outside of the line", sTitle: "What am I doing here?")
]

