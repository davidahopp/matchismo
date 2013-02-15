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

#define MATCH_BONUS 4
#define MISMATCH_PENALTY 2
#define FLIP_COST 1

- (void)flipCardAtIndex:(NSUInteger)index{
    Card *card = [self cardAtIndex:index];
    
    if (card && !card.isUplayable){
        
        for (Card *otherCard in self.cards){
            if (otherCard.isFaceUp && !otherCard.isUplayable){
                int matchScore = [card match:@[otherCard]];
                if(matchScore){
                    card.unplayable = YES;
                    otherCard.unplayable = YES;
                    self.score += matchScore * MATCH_BONUS;
                } else {
                    otherCard.faceUp = NO;
                    self.score -= MISMATCH_PENALTY;
                }
                break;
            }
        }
        self.score -= FLIP_COST;
        card.faceUp = !card.isFaceUp;
    }
}

- (Card *)cardAtIndex:(NSUInteger)index{
    return (index < [self.cards count]) ? self.cards[index] : nil;
}

- (id) initWithCardCoutn:(NSUInteger)count usingDeck:(Deck *)deck{
    self = [super init];
    
    if(self){
        for(int i = 0; i < count; i++){
            Card *card = [deck drawRandomCard];
            if(card){
                self.cards[i] = card;
            } else {
                self = nil;
                break;
            }
        }
    }
    
    return self;
}

@end
