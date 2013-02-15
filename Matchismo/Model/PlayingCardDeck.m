//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by David Hopp on 2/15/13.
//  Copyright (c) 2013 Agape Red. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (id)init {
    
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger index = 1; index <=[PlayingCard maxRank];index++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.suit = suit;
                card.rank = index;
                [self addCard:card atTop:YES];
            }
        }
    }
    
    return self;
}

@end