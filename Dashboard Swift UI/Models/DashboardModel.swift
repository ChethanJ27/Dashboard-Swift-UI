//
//  DashboardModel.swift
//  Dashboard Swift UI
//
//  Created by Chethan J on 21/06/2023.
//

import Foundation

struct DashboardModel: Codable {
    let status: Bool
    let statusCode: Int
    let message: String
    let support_whatsapp_number: String
    let extra_income: Double
    let total_links: Int
    let total_clicks: Int
    let today_clicks: Int
    let top_source, top_location, startTime: String
    let links_created_today, applied_campaign: Int
    let data: DataModel
    
}

struct DataModel: Codable,Hashable {
    let recent_links: [LinksModel]
    let top_links: [LinksModel]
    let overall_url_chart: [String: Double]
    
}
