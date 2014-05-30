//
//  DayMapperSpec.m
//  Domain
//
//  Created by Nick Peachey on 30/05/2014.
//  Copyright 2014 Cawooka. All rights reserved.
//

#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "DayMapper.h"
#import "Day.h"


SpecBegin(DayMapper)

describe(@"DayMapper", ^{
    
    it(@"should not map day object without data", ^{
        DayMapper *mapper = [[DayMapper alloc] initWithData:nil];
        Day *day = [mapper build];
        expect(day).to.beNil();
    });
    
    it(@"should map day object with minimum data", ^{
        DayMapper *mapper = [[DayMapper alloc] initWithData:@{@"title": @"my title", @"summary" : @"this is a summary"}];
        Day *day = [mapper build];
        expect(day.title).to.equal(@"my title");
        expect(day.summary).to.equal(@"this is a summary");
    });

});

SpecEnd
