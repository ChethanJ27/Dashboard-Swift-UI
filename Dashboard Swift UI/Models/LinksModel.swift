//
//  LinksModel.swift
//  Dashboard Swift UI
//
//  Created by Chethan J on 21/06/2023.
//

import Foundation


struct LinksModel: Codable, Hashable {
    let url_id: Int
    let web_link: String
    let smart_link: String
    let title: String
    let total_clicks: Int
    let original_image: String
    let times_ago: String
    let created_at: String
    let domain_id: String
    let url_prefix: String?
    let url_suffix: String
    let app: String
    
}
