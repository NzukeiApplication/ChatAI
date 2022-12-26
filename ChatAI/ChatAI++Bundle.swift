//
//  ChatAI++Bundle.swift
//  ChatAI
//
//  Created by 신도형 on 2022/12/27.
//

import Foundation

extension Bundle {
    var apiKey: String {
        guard let file = self.path(forResource: "OpenAIInfo", ofType: "plits") else { return "" }
        
        guard let resource = NSDictionary(contentsOfFile: file) else { return "" }
        guard let key = resource["API_KEY"] as? String else { fatalError("OpenAIInfo에 API_KEY설정을 해주세요")}
        return key;
    }
}
