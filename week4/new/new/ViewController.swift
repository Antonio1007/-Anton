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
        let configuration = URLSessionConfiguration.default
        configuration.waitsForConnectivity = true
        let session = URLSession(configuration: configuration)
        var request = URLRequest(url: URL(string: "https://stations-98a59.firebaseio.com/practice.json")!)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) {
            
            (data, response, error) in
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                return
            }
            guard let data = data else {
                print(error.debugDescription)
                return
            }
            if let result = NSString(data: data, encoding: String.Encoding.utf8.rawValue) as String? {
                print(result)
           }
            
        }
        task.resume()
        let stationData = StationData(stationAddress: "高雄市小港區沿海一路280號地下一樓", stationID: "R3", stationName: "Siaogang")
        OperationQueue.main.addOperation {
            self.stationIDLabel.text = stationData.stationID
            self.stationNameLabel.text = stationData.stationName
            self.stationAddressLabel.text = stationData.stationAddress
        }
    }
    
    
}


