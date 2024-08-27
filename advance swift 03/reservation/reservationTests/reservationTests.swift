//
//  reservationTests.swift
//  reservationTests
//
//  Created by aqeel on 27/08/2024.
//

import XCTest
@testable import reservation

final class reservationTests: XCTestCase {
  func test_recipeOrderCount_init_orderCountEqualsZero() {
        let recipe = Recipe()
        XCTAssert(recipe.orderCount == 0)
    }
    
    func test_recipeOrderCount_incrementOrderCount_orderCountEqualsOne() {
        var recipe  = Recipe()
        recipe.incrementOrderCount()
        XCTAssert(recipe.orderCount == 1)
    }
}
