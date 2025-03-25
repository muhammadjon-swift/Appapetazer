//
//  User.swift
//  Appapetazer
//
//  Created by Muhammadjon on 19/03/25.
//


import Foundation


struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
