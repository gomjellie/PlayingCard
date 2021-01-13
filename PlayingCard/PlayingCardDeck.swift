//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by Jacky on 2021/01/09.
//

import Foundation

struct PlayingCardDeck
{
    private(set) var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
    mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: 0)
        }
        return nil
    }
}
