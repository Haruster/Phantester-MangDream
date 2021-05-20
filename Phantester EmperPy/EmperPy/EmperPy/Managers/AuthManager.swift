//
//  AuthManager.swift
//  EmperPy
//
//  Created by 정준영 on 2021/05/17.
//

import Foundation

final class Authmanager {
    
    static let shared = Authmanager()
    
    private init() {}
    
    var isSignedIn: Bool {
        
        return false
        
    }
    
    private var accessToken: String? {
        
        return nil
        
    }
    
    private var refreshToken: String? {
        
        return nil
        
    }
    
    private var tokenExpirationData: Data? {
        
        return nil
        
    }
    
    private var shouldRefreshToken: Bool {
        
        return false
        
    }
    
}
