//
//  Names.m
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 31.03.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "Names.h"

@implementation Names

- (instancetype)init
{
    self = [super init];
    if (self) {
        _list = [self createNamesList];
    }
    return self;
}

- (NSArray<NSString *> *) createNamesList {
    NSArray<NSString *> * list = @[
                                   // male names
                                   @"jacob", @"michael", @"joshua",
                                   @"matthew", @"ethan", @"andrew",
                                   @"daniel", @"anthony", @"christopher",
                                   @"joseph", @"william", @"alexander",
                                   @"ryan", @"david", @"nicholas",
                                   @"tyler", @"james", @"john",
                                   @"jonathan", @"nathan", @"samuel",
                                   @"christian", @"noah", @"dylan",
                                   @"benjamin", @"Logan", @"brandon",
                                   @"gabriel", @"zachary", @"jose",
                                   @"elijah", @"angel", @"kevin",
                                   @"jack", @"caleb", @"justin",
                                   @"austin", @"Evan", @"robert",
                                   @"thomas", @"luke", @"mason",
                                   @"aidan", @"jackson", @"isaiah",
                                   @"jordan", @"gavin", @"connor",
                                   @"aiden", @"isaac", @"jason",
                                   @"cameron", @"hunter", @"jayden",
                                   @"juan", @"charles", @"aaron",
                                   @"lucas", @"luis", @"owen",
                                   @"landon", @"diego", @"brian",
                                   @"adam", @"adrian", @"kyle",
                                   
                                   // female names
                                   @"emily", @"emma", @"madison",
                                   @"abigail", @"olivia", @"isabella",
                                   @"hannah", @"samantha", @"ava",
                                   @"ashley", @"sophia", @"elizabeth",
                                   @"alexis", @"grace", @"sarah",
                                   @"alyssa", @"mia", @"natalie",
                                   @"chloe", @"brianna", @"lauren",
                                   @"ella", @"anna", @"taylor",
                                   @"kayla", @"hailey", @"jessica",
                                   @"victoria", @"jasmine", @"sydney",
                                   @"julia", @"jennifer", @"kaitlyn",
                                   @"lily", @"megan", @"kaylee",
                                   @"jennifer", @"angelina", @"makayla",
                                   @"allison", @"brooke", @"maria",
                                   @"trinity", @"lillian", @"mackenzie",
                                   @"faith", @"sofia", @"riley",
                                   @"haley", @"gabrielle", @"nicole",
                                   @"kylie", @"katelyn", @"zoe",
                                   @"paige", @"gabriella", @"jenna",
                                   @"kimberly", @"stephanie", @"alexa",
                                   @"avery", @"andrea", @"leah",
                                   @"madeline", @"nevaeh", @"evelyn",
                                   
                                   // invalid names
                                   @"234пав", @"вапавп", @"вапвап",
                                   @"12344", @"000", @"павпаввап",
                                   @"ФВААА", @"212312", @"000",
                                   @"ВАорпопо", @"апрапрапр", @"апрапар",
                                   @"ываыва", @"234234", @"аывываыа",
                                   @"ыааывавы", @"ывавыа34234", @"аыыавы",
                                   @"ываыав34", @"234324", @"23424",
                                   @"Ella1111", @"ываыва", @"T324234aylor",
                                   @"423424", @"ыавыа", @"1231231",
                                   @"ываыва", @"123123", @"568678768",
                                   @"ыаываыав", @"123123123", @"12313",
                                   @"ываыва", @"23424234", @"аывыа",
                                   @"123123", @"8797897", @"аывыаыа",
                                   @"%!%!%", @"(;.).;)", @"24234",
                                   @"345435", @"ываыва", @"ываыва",
                                   @"F1231231aith", @"123", @"123",
                                   @"345345", @"вапвапва", @"1231323",
                                   @"2554353", @"ыавыаыа", @"12312312",
                                   @"выаыавыв", @"1231235", @"43534535",
                                   @"ываываыва", @"Stepываыываhanie", @"ываыавыа",
                                   @"12313", @"234234", @"3453",
                                   @"ыаыаы", @"Nevaeh111", @"Evelyn435345"
                                   ];
    
    return list;
}

@end
