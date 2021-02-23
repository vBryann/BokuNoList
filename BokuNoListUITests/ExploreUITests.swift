//
//  ExploreUITests.swift
//  BokuNoListUITests
//
//  Created by Vitor Bryan on 12/02/21.
//  Copyright © 2021 Vitor Bryan. All rights reserved.
//

import XCTest

class ExploreUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        XCUIApplication().launch()

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCollectionView() throws {
        let app = XCUIApplication()
        let firstItem = app.collectionViews.containing(.other, identifier:
                                                        "Vertical scroll bar, 3 pages").children(matching:
                                                                                                    .cell).element(boundBy:
                                                                                                                    0).children(matching:
                                                                                                                                    .other).element
        XCTAssertTrue(firstItem.exists)
        firstItem.tap()
    }
    func testChangeView() throws {
        let app = XCUIApplication()
        let tabBar = app.tabBars["Tab Bar"]
        let myListButton = tabBar.buttons["My List"]
        XCTAssertTrue(myListButton.exists)
        myListButton.tap()
        let myListNav = app.navigationBars["My List"].staticTexts["My List"]
        XCTAssertTrue(myListNav.exists)
    }
    func testSearchBar() throws {
        
    }
}
