//
//  roomViewModel.swift
//  VMDirectory
//
//  Created by Sathish on 29/10/22.
//

import Foundation

class roomListVM{
    
    var roomInfo = [roomData]()
    
    func fetchCharacterApi(succuss: @escaping (_ : Bool)-> Void){
        let URL = baseURL+apiInfo.room.rawValue
        APIFetch.share.fetchData(url: URL) { data in
            do{
                print(data)
                let jsonDecode = try JSONDecoder().decode([roomData].self, from: data)
                self.roomInfo = jsonDecode
                print("jsonnnn\(self.roomInfo)")
                print("total", self.roomInfo.count)
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
