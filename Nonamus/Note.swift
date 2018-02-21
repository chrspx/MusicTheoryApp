//
//  Note.swift
//  Nonamus
//
//  Created by Charles Prado on 20/02/2018.
//  Copyright © 2018 Charles Prado. All rights reserved.
//

import Foundation

enum Note: Int {
    case a, ash, b, c, csh, d, dsh, e, f, fsh, g, gsh
    
    func semitonalDistance(of note: Note) -> Int {
        return self.rawValue - note.rawValue
    }
    
    func unison(of note: Note) -> Bool {
        return semitonalDistance(of: note) == 0
    }
    
    func minorSecond(of note: Note) -> Bool {
        return semitonalDistance(of: note) == 1
    }
    
    func majorSecond(of note: Note) -> Bool {
        return semitonalDistance(of: note) == 2
    }
    
    func minorThird(of note: Note) -> Bool {
        return semitonalDistance(of: note) == 3
    }
    
    func majorThird(of note: Note) -> Bool {
        return semitonalDistance(of: note) == 4
    }
    
    func perfectFourth(of note: Note) -> Bool {
        return semitonalDistance(of: note) == 5
    }
    
    func perfectFifth(of note: Note) -> Bool {
        return semitonalDistance(of: note) == 6
    }
    
    func minorSixth(of note: Note) -> Bool {
        return semitonalDistance(of: note) == 7
    }
    
    func majorSixth(of note: Note) -> Bool {
        return semitonalDistance(of: note) == 8
    }
    
    func minorSeventh(of note: Note) -> Bool {
        return semitonalDistance(of: note) == 9
    }
    
    func majorSeventh(of note: Note) -> Bool {
        return semitonalDistance(of: note) == 10
    }
}
