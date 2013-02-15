//
//  CardMatchingGame.m
//  Matchismo
//
//  Created by David Hopp on 2/15/13.
//  Copyright (c) 2013 Agape Red. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame()

@property (readwrite, nonatomic) int score;
@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation CardMatchingGame

-(NSMutableArray *)cards{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (id) initWithCardCoutn:(NSUInteger)count usingDeck:(Deck *)deck{
    self = [super init];
    
    if(self){
        for(int i = 0; i < count; i++){
            Card *card = [deck drawRandomCard];
            self.cards[i] = card;
        }
    }
    
    return self;
}

@end
