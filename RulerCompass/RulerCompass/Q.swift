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
    Q(title: "Line bisector", sTitle: "Very useful"),
    Q(title: "Angle bisector", sTitle: "What the title says"),
    Q(title: "Perpendicular through a line", sTitle: "Very useful"),
    Q(title: "Perpendicular through a point outside of the line", sTitle: "Use this somewhere somehow"),
    Q(title: "Triangle in semicircle", sTitle: "Demonstration and proof why it is always right"),
    Q(title: "3 line segments to triangle", sTitle: "Might be useful if you always forget this solution")
]

