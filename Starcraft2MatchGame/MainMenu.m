//
//  MainMenu.m
//  Starcraft2MatchGame
//
//  Created by Yachao Liu on 10/14/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "MainMenu.h"
#import "Game.h"


@implementation MainMenu

+(id) scene
{
    CCScene *mainMenuScene = [CCScene node];
    CCLayer *mainMenuLayer = [MainMenu node];
    [mainMenuScene addChild:mainMenuLayer];
    
    return mainMenuScene;
}

-(id) init
{
    if((self = [super init]))
    {
        //init background
        CGSize screenSize = [CCDirector sharedDirector].winSize;
        
        CCSpriteFrameCache *frameCache = [CCSpriteFrameCache sharedSpriteFrameCache];
        [frameCache addSpriteFramesWithFile:@"SC2_Game_Art"];
        
        CCSprite *background = [CCSprite spriteWithSpriteFrameName:@"Main/SC2_Main_2.png"];
        background.anchorPoint = CGPointMake(0, 0);
        //float bgImageWidth = background.texture.contentSize.width;
        //float bgImageHeight = background.texture.contentSize.height;
        //CCLOG(@"image width - %f image height - %f", bgImageWidth, bgImageHeight);
        //background.position = CGPointMake(bgImageWidth + bgImageWidth / 2, bgImageHeight + bgImageHeight / 2);
        [self addChild:background z:0 tag:mainMenuBackgroundTag];
        
        //create menu buttons
        CCSprite *playButton = [CCSprite spriteWithSpriteFrameName:@"Main/SC2_Play_Button.png"];
        CCMenuItemSprite *playButtonMenuItem = [CCMenuItemSprite
                                                itemWithNormalSprite:playButton
                                                selectedSprite:NULL
                                                block:^(id sender){[[CCDirector sharedDirector] replaceScene:[Game scene]];}];
        CCMenu *playMenu = [CCMenu menuWithItems:playButtonMenuItem, nil];
        playMenu.position = CGPointMake(screenSize.width / 2 + screenSize.width / 3.8f, screenSize.height / 2 - screenSize.height / 2.8f);
        [self addChild:playMenu];
    }
    
    return self;
}

/*
-(void) playGame
{
    [[CCDirector sharedDirector] replaceScene:[Game scene]];
}
 */

-(void) dealloc
{
    CCLOG(@"+++dealloc method of %@", self);
}

@end
