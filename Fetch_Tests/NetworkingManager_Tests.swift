//
//  NetworkingManager_Tests.swift
//  Fetch_Tests
//
//  Created by Andrea on 7/10/23.
//

import XCTest
import Combine
@testable import Fetch

final class NetworkingManager_Tests: XCTestCase {
    
    func testDownloadURL() {
        // Given
        let url = URL(string: "https://example.com")!
        
        // When
        let expectation = XCTestExpectation(description: "Download URL")
        let cancellable = NetworkingManager.download(url: url)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    expectation.fulfill()
                case .failure(let error):
                    XCTFail("Failed with error: \(error.localizedDescription)")
                }
            }, receiveValue: { data in
                // print the data size
                print("Downloaded data size: \(data.count) bytes")
            })
        
        // Then
        wait(for: [expectation], timeout: 5.0)
        cancellable.cancel()
    }
    
    func testDownloadURLData() {
        // Given
        if let url = URL(string: "https://example.com") {
            // When
            let expectation = XCTestExpectation(description: "Download URL")
            let cancellable = NetworkingManager.download(url: url)
                .sink(receiveCompletion: { completion in
                    switch completion {
                    case .finished:
                        expectation.fulfill()
                    case .failure(let error):
                        XCTFail("Failed with error: \(error.localizedDescription)")
                    }
                }, receiveValue: { data in
                    
                    XCTAssertGreaterThan(data.count, 0, "Downloaded data should not be empty")
                })
            
            // Then
            wait(for: [expectation], timeout: 5.0)
            cancellable.cancel()
        } else {
            XCTFail("Invalid URL")
        }
    }
    
    
    
    
}

