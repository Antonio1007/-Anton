//
//  ViewController.swift
//  new
//
//  Created by AntonChen on 2022/4/16.
//

import UIKit


struct StationData: Codable {
    
    enum DecodingError: Error {
        case missingFile
    }
    
    var stationAddress: String = ""
    var stationID: String = ""
    var stationName: String = ""

//init(fileName: String) throws {
//    guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else { throw DecodingError.missingFile
//    }
    
//    let decoder = JSONDecoder()
//    let data = try Data(contentsOf: url)
//    self = try decoder.decode(StationData.self, from: data)
    
//}
    
}


class ViewController: UIViewController {
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationAddressLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let localData = self.readLocalFile(forName: "data") {
            self.parse(jsonData: localData)
        }
        let urlString = "https://stations-98a59.firebaseio.com/practice.json"
          self.loadJson(fromURLString: urlString) { (result) in
              switch result {
              case .success(let data):
                  self.parse(jsonData: data)
              case .failure(let error):
                  print(error)
              }
          }
    }
    struct DemoData: Codable {
        let stationID: String
        let stationName: String
        let stationAddress: String
    }

    private func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name, ofType: "json"),
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }
        return nil
    }
    private func parse(jsonData: Data) {
        do {
            let decodedData = try JSONDecoder().decode(DemoData.self, from: jsonData)
            print("ID: ", decodedData.stationID)
            print("Address: ", decodedData.stationAddress)
            print("Name:", decodedData.stationName)
            print("=====================================")
            DispatchQueue.main.async {
                self.stationIDLabel.text = decodedData.stationID
                self.stationNameLabel.text = decodedData.stationName
                self.stationAddressLabel.text = decodedData.stationAddress
            }
            
        } catch {
            print("decode error")
        }
    }
    private func loadJson(fromURLString urlString: String, completion: @escaping(Result<Data, Error>) -> Void) {
        if let url = URL(string: urlString) {
            let urlSession = URLSession(configuration: .default).dataTask(with: url) { (data, response, error) in
                if let error = error {
                    completion(.failure(error))
                }
                if let data = data {
                    completion(.success(data))
                }
            }
            urlSession.resume()
        }
    }
    
}


