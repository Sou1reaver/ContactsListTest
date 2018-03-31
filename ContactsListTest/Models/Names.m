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
                                   @"Jacob", @"Michael", @"Joshua",
                                   @"Matthew", @"Ethan", @"Andrew",
                                   @"Daniel", @"Anthony", @"Christopher",
                                   @"Joseph", @"William", @"Alexander",
                                   @"Ryan", @"David", @"Nicholas",
                                   @"Tyler", @"James", @"John",
                                   @"Jonathan", @"Nathan", @"Samuel",
                                   @"Christian", @"Noah", @"Dylan",
                                   @"Benjamin", @"Logan", @"Brandon",
                                   @"Gabriel", @"Zachary", @"Jose",
                                   @"Elijah", @"Angel", @"Kevin",
                                   @"Jack", @"Caleb", @"Justin",
                                   @"Austin", @"Evan", @"Robert",
                                   @"Thomas", @"Luke", @"Mason",
                                   @"Aidan", @"Jackson", @"Isaiah",
                                   @"Jordan", @"Gavin", @"Connor",
                                   @"Aiden", @"Isaac", @"Jason",
                                   @"Cameron", @"Hunter", @"Jayden",
                                   @"Juan", @"Charles", @"Aaron",
                                   @"Lucas", @"Luis", @"Owen",
                                   @"Landon", @"Diego", @"Brian",
                                   @"Adam", @"Adrian", @"Kyle",
                                   
                                   // female names
                                   @"Emily", @"Emma", @"Madison",
                                   @"Abigail", @"Olivia", @"Isabella",
                                   @"Hannah", @"Samantha", @"Ava",
                                   @"Ashley", @"Sophia", @"Elizabeth",
                                   @"Alexis", @"Grace", @"Sarah",
                                   @"Alyssa", @"Mia", @"Natalie",
                                   @"Chloe", @"Brianna", @"Lauren",
                                   @"Ella", @"Anna", @"Taylor",
                                   @"Kayla", @"Hailey", @"Jessica",
                                   @"Victoria", @"Jasmine", @"Sydney",
                                   @"Julia", @"Jennifer", @"Kaitlyn",
                                   @"Lily", @"Megan", @"Kaylee",
                                   @"Jennifer", @"Angelina", @"Makayla",
                                   @"Allison", @"Brooke", @"Maria",
                                   @"Trinity", @"Lillian", @"Mackenzie",
                                   @"Faith", @"Sofia", @"Riley",
                                   @"Haley", @"Gabrielle", @"Nicole",
                                   @"Kylie", @"Katelyn", @"Zoe",
                                   @"Paige", @"Gabriella", @"Jenna",
                                   @"Kimberly", @"Stephanie", @"Alexa",
                                   @"Avery", @"Andrea", @"Leah",
                                   @"Madeline", @"Nevaeh", @"Evelyn",
                                   
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
