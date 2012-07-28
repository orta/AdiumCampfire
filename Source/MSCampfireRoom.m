//
//  MSCampfireRoom.m
//  AdiumCampfire
//
//  Created by Marek Stępniowski on 10-03-30.
//  Copyright 2010 Apple Inc. All rights reserved.
//

#import "MSCampfireRoom.h"


@implementation MSCampfireRoom


- (MSCampfireRoom *)initWithUID:(NSInteger)anUID
{
  if ((self = [super init])) {
    contactUIDs = [[NSMutableArray alloc] init];
    uid = anUID;
    usersByUID = [[NSDictionary alloc] init];
  }
  return self;
}

- (void)dealloc
{
  [contactUIDs release];
  [super dealloc];
}

- (void)addContactWithUID:(NSInteger)anUID
{
  [contactUIDs addObject:[NSNumber numberWithInteger:anUID]];
}

- (void)removeContactWithUID:(NSInteger)toRemove
{
    [contactUIDs removeObject:[NSNumber numberWithInteger:toRemove]];
}


- (NSArray *)contactUIDs
{
  return contactUIDs;
}

@end
