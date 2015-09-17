//
//  Subject.h
//  
//
//  Created by Sanket Shah on 18/09/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "MTLModel.h"

@class Student;

@interface Subject : NSManagedObject

@property (nonatomic, retain) NSNumber * idSubject;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * score;
@property (nonatomic, retain) Student *subjectStudent;

@end
