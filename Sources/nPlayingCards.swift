/*
 This source file is part of the Swift.org open source project
 
 Copyright 2015 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception
 
 See http://swift.org/LICENSE.txt for license information
 See http://swift.org/CONTRIBUTORS.txt for Swift project authors
 */


//public class nPlayingCards {
/**
 * Rank
 **/
public enum Rank : Int {
    case two = 2
    case three, four, five, six, seven, eight, nine, ten
    case jack, queen, king, ace
}

// MARK: - Comparable

extension Rank : Comparable {}

public func <(lhs: Rank, rhs: Rank) -> Bool {
    switch (lhs, rhs) {
    case (_, _) where lhs == rhs:
        return false
    case (.ace, _):
        return false
    default:
        return lhs.rawValue < rhs.rawValue
    }
}

// MARK: - CustomStringConvertible

extension Rank : CustomStringConvertible {
    public var description: String {
        switch self {
        case .ace: return "A"
        case .jack: return "J"
        case .queen: return "Q"
        case .king: return "K"
        default:
            return "\(rawValue)"
        }
    }
}

/** 
 * Suit
 **/
public enum Suit: String {
    case spades, hearts, diamonds, clubs
}

// MARK: - Comparable

extension Suit: Comparable {}

public func <(lhs: Suit, rhs: Suit) -> Bool {
    switch (lhs, rhs) {
    case (_, _) where lhs == rhs:
        return false
    case (.spades, _),
         (.hearts, .diamonds), (.hearts, .clubs),
         (.diamonds, .clubs):
        return false
    default:
        return true
    }
}

// MARK: - CustomStringConvertible

extension Suit : CustomStringConvertible {
    public var description: String {
        switch self {
        case .spades: return "♠︎"
        case .hearts: return "♡"
        case .diamonds: return "♢"
        case .clubs: return "♣︎"
        }
    }
}



/**
 * PlayingCard
 **/
public struct PlayingCard {
    let rank: Rank
    let suit: Suit
    
    public init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
    }
}

// MARK: - Equatable

extension PlayingCard: Equatable {}

public func ==(lhs: PlayingCard, rhs: PlayingCard) -> Bool {
    return lhs.rank == rhs.rank && lhs.suit == rhs.suit
}

// MARK: - Comparable

extension PlayingCard: Comparable {}

public func <(lhs: PlayingCard, rhs: PlayingCard) -> Bool {
    return lhs.rank == rhs.rank ? lhs.suit < rhs.suit : lhs.rank < rhs.rank
}

// MARK: - CustomStringConvertible

extension PlayingCard : CustomStringConvertible {
    public var description: String {
        return "\(suit)\(rank)"
    }
}

//}
