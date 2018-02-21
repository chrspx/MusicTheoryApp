//
//  NoteTest.swift
//  NonamusUITests
//
//  Created by Charles Prado on 20/02/2018.
//  Copyright © 2018 Charles Prado. All rights reserved.
//

import XCTest

@testable import Nonamus

class NoteTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testUnisonInterval() throws {
        let firstNote : Note = .a
        let secondNote: Note = .a
        let thirdNote : Note = .b
        
        XCTAssertTrue(secondNote.unison(of: firstNote))
        XCTAssertFalse(thirdNote.unison(of: firstNote))
    }
    
    func testMinorSecondInterval() throws {
        let firstNote : Note = .a
        let secondNote: Note = .ash
        let thirdNote : Note = .b
        
        XCTAssertTrue(secondNote.minorSecond(of: firstNote))
        XCTAssertFalse(thirdNote.minorSecond(of: firstNote))
    }
    func testMajorSecondInterval() throws {
        let firstNote : Note = .a
        let secondNote: Note = .b
        let thirdNote : Note = .f
        
        XCTAssertTrue(secondNote.majorSecond(of: firstNote))
        XCTAssertFalse(thirdNote.majorSecond(of: firstNote))
    }
    
    func testMinorThirdInterval() throws {
        let firstNote : Note = .a
        let secondNote: Note = .c
        let thirdNote : Note = .f
        
        XCTAssertTrue(secondNote.minorThird(of: firstNote))
        XCTAssertFalse(thirdNote.minorThird(of: firstNote))
    }
    
    func testMajorThirdnterval() throws {
        let firstNote : Note = .a
        let secondNote: Note = .csh
        let thirdNote : Note = .f
        
        XCTAssertTrue(secondNote.majorThird(of: firstNote))
        XCTAssertFalse(thirdNote.majorThird(of: firstNote))
    }
    
    func testPerfectFourthInterval() throws {
        let firstNote : Note = .a
        let secondNote: Note = .d
        let thirdNote : Note = .f
        
        XCTAssertTrue(secondNote.perfectFourth(of: firstNote))
        XCTAssertFalse(thirdNote.perfectFourth(of: firstNote))
    }
    
    func testPerfectFifthInterval() throws {
        let firstNote : Note = .a
        let secondNote: Note = .dsh
        let thirdNote : Note = .f
        
        XCTAssertTrue(secondNote.perfectFifth(of: firstNote))
        XCTAssertFalse(thirdNote.perfectFifth(of: firstNote))
    }
    
    func testMinorSixthInterval() throws {
        let firstNote : Note = .a
        let secondNote: Note = .e
        let thirdNote : Note = .b
        
        XCTAssertTrue(secondNote.minorSixth(of: firstNote))
        XCTAssertFalse(thirdNote.minorSixth(of: firstNote))
    }
    
    func testMajorSixthInterval() throws {
        let firstNote : Note = .a
        let secondNote: Note = .f
        let thirdNote : Note = .b
        
        XCTAssertTrue(secondNote.majorSixth(of: firstNote))
        XCTAssertFalse(thirdNote.majorSixth(of: firstNote))
    }
    
    func testMinorSeventhInterval() throws {
        let firstNote : Note = .a
        let secondNote: Note = .fsh
        let thirdNote : Note = .f
        
        XCTAssertTrue(secondNote.minorSeventh(of: firstNote))
        XCTAssertFalse(thirdNote.minorSeventh(of: firstNote))
    }
    
    func testMajorSeventhInterval() throws {
        let firstNote : Note = .a
        let secondNote: Note = .g
        let thirdNote : Note = .f
        
        XCTAssertTrue(secondNote.majorSeventh(of: firstNote))
        XCTAssertFalse(thirdNote.majorSeventh(of: firstNote))
    }
}
