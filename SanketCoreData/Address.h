//
//  Address.h
//  
//
//  Created by Sanket Shah on 18/09/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "MTLModel.h"

@class Student;

@interface Address : NSManagedObject

@property (nonatomic, retain) NSString * city;
@property (nonatomic, retain) NSString * state;
@property (nonatomic, retain) NSNumber * pincode;
@property (nonatomic, retain) Student *addressStudent;

@end
