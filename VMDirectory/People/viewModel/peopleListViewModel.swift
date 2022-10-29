//
//  peopleListViewModel.swift
//  VMDirectory
//
//  Created by Sathish on 29/10/22.
//

import Foundation
class peopleListVM{
    
    var peopleData = [peopleDataDetail]()
    
    func fetchCharacterApi(succuss: @escaping (_ : Bool)-> Void){
        let URL = baseURL+apiInfo.people.rawValue
        APIFetch.share.fetchData(url: URL) { data in
            do{
                print(data)
                let jsonDecode = try JSONDecoder().decode([peopleDataDetail].self, from: data)
                self.peopleData = jsonDecode
                print("jsonnnn\(self.peopleData)")
                print("total", self.peopleData.count)
                succuss(true)
            }catch {
                succuss(false)
            }
        } onError: { err in
            print(err)
            succuss(false)
        }
    }
    
}
