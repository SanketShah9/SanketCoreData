//
//  SeartVC.m
//  SanketCoreData
//
//  Created by Sanket Shah on 18/09/15.
//  Copyright (c) 2015 Sanket Shah. All rights reserved.
//

#import "SeartVC.h"
#import "Student.h"
#import "Subject.h"
#import "Address.h"
#import "AppConstant.h"
@interface SeartVC ()

@end

@implementation SeartVC

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *arr = @[@"Sanket",@"Kaushal",@"Jay"];
    NSArray *arrSub = @[@"Maths",@"Science",@"English"];
    NSArray *arrScore = @[@80,@90,@98];
//    [arr enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL *stop) {
//        Student *newSt = (Student*)[CommonMethods initWithEntity:@"Student"];
//        newSt.firstname = obj;
//        newSt.lastname = @"Shah";
//        newSt.stId = [NSNumber numberWithInt:(int)idx];
//        [CommonMethods saveManagedObject];
//        [arrSub enumerateObjectsUsingBlock:^(NSString *name, NSUInteger idx2, BOOL *stop) {
//            Subject *newSub = (Subject*)[CommonMethods initWithEntity:@"Subject"];
//            float marks = [arrScore[idx2] floatValue];
//            newSub.score = [NSNumber numberWithFloat:marks];
//            newSub.name = name;
//            newSub.idSubject = [NSNumber numberWithInt:(int)idx2];
//            [newSt addStudentSubjectObject:newSub];
//            [CommonMethods saveManagedObject];
//        }];
//    }];
    
    NSArray *students = [CommonMethods fetchManagedObjectsForEntity:@"Student" withPredicate:nil withFetchLimit:NO];
    for (Student *obj in students) {
        NSLog(@"%@ %@",obj.stId,obj.firstname);
            //NSLog(@"%@ %@",obj.studentAddress,obj.studentSubject);
        for (Subject *subject in obj.studentSubject) {
            NSLog(@"%@ %@",subject.score,subject.name);
        }
        
//        Address *address = (Address*)[CommonMethods initWithEntity:@"Address"];
//        address.city = @"Ahmedabad";
//        address.state = @"Gujarat";
//        address.addressStudent = obj;
//        [CommonMethods saveManagedObject];
        
        
        
        
        NSLog(@"%@ %@ %@",obj.studentAddress.city,obj.studentAddress.state,obj.studentAddress.pincode);
        
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
