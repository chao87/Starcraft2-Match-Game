//
//  GameLayer.m
//  Starcraft2MatchGame
//
//  Created by Yachao Liu on 10/13/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Game.h"
#import "Card.h"


@implementation Game

+(id) scene
{
    CCScene *gameScene = [CCScene node];
    CCLayer *gameLayer = [Game node];
    [gameScene addChild:gameLayer];
    
    return gameScene;
}

-(id) init
{
    if((self = [super init]))
    {
        CCLOG(@"+++init method of %@", self);
        
        CGSize screenSize = [CCDirector sharedDirector].winSize;
        CCSprite *background = [CCSprite spriteWithFile:@"SC2_Terran_Level_2.png"];
        //float imageWidthSize = background.texture.contentSize.width;
        //background.position = CGPointMake(imageWidthSize / 2, (screenSize.height / 2) + 100);
        background.anchorPoint = CGPointMake(0, 0);
        [self addChild:background z:0 tag:gameBackgroundTag];
        
        //add a card
        Card *card = [[Card alloc] initWithIDAndNameAndFile:@"TESTID" cardName:@"TESTNAME" fileName:@"SC2_Terran_Banshee.png" ];
        float cardImageWidth = card.texture.contentSize.width;
        card.position = CGPointMake(cardImageWidth / 2, screenSize.height / 2);
        //card = [CCSprite spriteWithFile:@"SC2_Terran_Banshee.png"];
        //CCTexture2D *cardImage = [[CCTextureCache sharedTextureCache] addImage:@"SC2_Terran_Banshee.png"];
        //[card setTexture:cardImage];
        //Card *card = [CCSprite spriteWithFile:@"SC2_Terran_Banshee.png"];
        //card.cardID = @"TESTID";
        //card.cardName = @"TESTNAME";
        //card.isFlipped = NO;
        [self addChild:card z:1 tag:1];
        CCLOG(@"card name - %@", card.cardName);
        
    }
    
    return self;
}

-(void) dealloc
{
    CCLOG(@"+++dealloc method of %@", self);
}

@end
