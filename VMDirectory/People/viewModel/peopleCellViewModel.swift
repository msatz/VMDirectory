//
//  peopleCellViewModel.swift
//  VMDirectory
//
//  Created by Sathish on 29/10/22.
//

import Foundation
class peopleCellViewModel{
    private var people : peopleDataDetail
    
    init(people: peopleDataDetail){
        self.people = people
    }
    
    public var getName: String{
        return "\(people.firstName) \(people.lastName)" 
    }
    
    public var getMailId: String{
        return people.email
    }
    public var getJobTitle: String{
        return people.jobtitle
    }
    public var getFavColor: String{
        return people.favouriteColor
    }
    public var getImageURL: String{
        return people.avatar
    }
}
