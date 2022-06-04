//
//  SheetManager.swift
//  AKFA Timetable
//
//  Created by Saydullo Ismatov on 26/05/22.
//

import Foundation

protocol SheetManagerDelegate{
    func didUpdateSheet(_  sheetManager: SheetManager, sheet: SheetModel)
    func didFailWithError(error: Error )
}

struct SheetManager{
    var apiURL = "https://sheet.best/api/sheets/b27766d2-9967-4994-ad41-e0603af73992#"
    
    var delegate: SheetManagerDelegate?
    
    func fetchSheet(){
        performRequest(apiURL)
    }
    
    func performRequest(_ urlString: String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default )
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                     return
                }
                 
                if let safeData = data {
                    print(safeData)
                    if let sheet = self.parseJSON(safeData){
                        self.delegate?.didUpdateSheet(self, sheet: sheet)
                    }
                    
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_ sheet: Data ) -> SheetModel?{
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode([SheetData].self, from: sheet)
            let i = 0
            let name = decodedData[i].Full_name
            let id = decodedData[i].Student_ID
            let group_id = decodedData[i].Group_ID
            decodedData.forEach { course in print(course)  }
            let sheet = SheetModel(name: name, id: id, group_id: group_id)
            return sheet
            
            
        } catch {
            self.delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
