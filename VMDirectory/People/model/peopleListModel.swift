//
//  peopleListModel.swift
//  VMDirectory
//
//  Created by Sathish on 29/10/22.
//

import Foundation

struct peopleDataModel:Codable{
    var peopleDataDetail: [peopleDataDetail]
}

struct peopleDataDetail:Codable{
    var createdAt: String
    var firstName: String
    var avatar: String
    var lastName: String
    var email: String
    var jobtitle: String
    var favouriteColor: String
    var id: String
}
