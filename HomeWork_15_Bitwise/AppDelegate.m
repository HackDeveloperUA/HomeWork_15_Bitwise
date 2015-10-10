
#import "AppDelegate.h"
#import "ASStudent.h"

@interface AppDelegate ()

@end



@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    NSUInteger countDeveloper;
    
    NSMutableArray* arrayForStudent   = [NSMutableArray new];
    NSMutableArray* arrayForTechie    = [NSMutableArray new];
    NSMutableArray* arrayForHumanist  = [NSMutableArray new];
    
    
    for (int i = 0; i < 10; i++) {
        ASStudent* student = [[ASStudent alloc] initWithName:[NSString stringWithFormat:@"Student %d",i]];
      
        
        if (student.subjectType & ASStudentSubjectBiology) {
            NSLog(@"Отменяем биологию !!! ");
            student.subjectType = student.subjectType & ~ASStudentSubjectBiology;
        }
        
        [arrayForStudent addObject:student];
        NSLog(@" %@ \n\n\n",student);
    }
    
    // Определяю гуманитарий или технарь
    
    for  (ASStudent* obj in arrayForStudent) {
        
      if ( (obj.subjectType & ASStudentSubjectMath) && (obj.subjectType &ASStudentSubjectProgramming))
         [arrayForTechie addObject:obj];
        
      if ( (obj.subjectType & ASStudentSubjectArt)  &&  (obj.subjectType & ASStudentSubjectDrawing))
         [arrayForHumanist addObject:obj];
    }

    // Выводим всех разработчиков
    for (ASStudent* obj in arrayForStudent) {
        
        if (obj.subjectType & ASStudentSubjectProgramming)
        { countDeveloper++;
          NSLog(@"Developer = %@",obj.name);
        }
        
    }
    NSLog(@"Count Developer %d \n\n",countDeveloper);
   
     // Выводим все  технарей
    for (ASStudent* obj in arrayForTechie)
        NSLog(@"Techie =  %@",obj.name);

    NSLog(@"\n\n\n\n");

    // Выводим гуманитариев
    for (ASStudent* obj in arrayForHumanist)
        NSLog(@"Humanist =  %@",obj.name);

    
    return YES;
}

- (void) applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
