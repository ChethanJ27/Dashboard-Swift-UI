//
//  DashboardService.swift
//  Dashboard Swift UI
//
//  Created by Chethan J on 21/06/2023.
//

import Foundation


class DashboardService {
    
    let token: String = ""
    
    func fetchData() async throws -> DashboardModel {
        
        let url = URL(string: "https://api.inopenapp.com/api/v1/dashboardNew".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")
        
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        request.setValue(
            "Bearer \(token)",
            forHTTPHeaderField: "Authentication"
        )
        
        let sessionConfiguration = URLSessionConfiguration.default

        sessionConfiguration.httpAdditionalHeaders = [
            "Authorization": "Bearer \(token)"
        ]

        let session = URLSession(configuration: sessionConfiguration)

        
        let (data, response) = try await session.data(for: request)
        
        guard response is HTTPURLResponse else {
            fatalError("dashboard Api call failed")
        }
        switch response.statusCode {
            case 200...299:
                let fetchedData = try JSONDecoder().decode(DashboardModel.self, from: data)
                print(fetchedData)
                return fetchedData
            case 401:
                print("errror")
            default:
                print("api call failed")
        }
    }
    
}
