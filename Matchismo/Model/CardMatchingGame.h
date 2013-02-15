//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by David Hopp on 2/15/13.
//  Copyright (c) 2013 Agape Red. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"

@interface CardMatchingGame : NSObject


- (id) initWithCardCoutn:(NSUInteger)count
               usingDeck:(Deck *)deck;

- (void)flipCardAtIndex:(NSUInteger)index;

- (Card *)cardAtIndex:(NSUInteger)index;

@property (readonly, nonatomic) int score;

@end
