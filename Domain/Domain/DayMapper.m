//
//  DayMapper.m
//  Domain
//
//  Created by Nick Peachey on 30/05/2014.
//  Copyright (c) 2014 Cawooka. All rights reserved.
//

#import "DayMapper.h"

@interface DayMapper()
@property (nonatomic, strong) NSDictionary *dicData;
@end


@implementation DayMapper

-(id)initWithData:(NSDictionary *)dictionary
{
    self = [super init];
    
    if (self) {
        self.dicData = dictionary;
    }
    
    
    return self;
}

-(Day *)build
{
    if (self.dicData == nil)
    {
        return nil;
    }
    
    Day *day = [[Day alloc] init];
    day.title = [self.dicData objectForKey:@"title"];
    day.summary = [self.dicData objectForKey:@"summary"];
    return day;
}

@end
