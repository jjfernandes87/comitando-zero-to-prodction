//
//  TreasuryViewUseCaseTests.swift
//  SampleTestsTests
//
//  Created by Julio Fernandes on 22/04/22.
//

import XCTest
import DesignSystem
@testable import SampleTests

final class TreasuryViewUseCaseTests: XCTestCase {

    var sut: TreasuryViewUseCase?
    
    override func setUp() {
        super.setUp()
        sut = TreasuryViewUseCase()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_responseData() {
        sut?.responseData { content in
            XCTAssertEqual(content.count, 6)
            XCTAssertTrue(content[0] is AboutViewCell)
            XCTAssertTrue(content[1] is TitleViewCell)
            XCTAssertTrue(content[2] is AssetCardViewCell)
        }
    }

}
