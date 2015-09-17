//
//  Student.h
//  
//
//  Created by Sanket Shah on 18/09/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "MTLModel.h"
@class Address, Subject;

@interface Student : NSManagedObject

@property (nonatomic, retain) NSNumber * stId;
@property (nonatomic, retain) NSString * firstname;
@property (nonatomic, retain) NSString * lastname;
@property (nonatomic, retain) NSSet *studentSubject;
@property (nonatomic, retain) Address *studentAddress;
@end

@interface Student (CoreDataGeneratedAccessors)

- (void)addStudentSubjectObject:(Subject *)value;
- (void)removeStudentSubjectObject:(Subject *)value;
- (void)addStudentSubject:(NSSet *)values;
- (void)removeStudentSubject:(NSSet *)values;

@end
