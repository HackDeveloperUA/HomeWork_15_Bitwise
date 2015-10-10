

#import <Foundation/Foundation.h>



typedef enum {

              ASStudentSubjectMath        = 1 << 0,
              ASStudentSubjectProgramming = 1 << 1,
              ASStudentSubjecEngineering  = 1 << 2,
              ASStudentSubjectPhisics     = 1 << 3,
    
    
              ASStudentSubjectArt         = 1 << 4,
              ASStudentSubjectBiology     = 1 << 5,
              ASStudentSubjectHistory     = 1 << 6,
              ASStudentSubjecAnatomy      = 1 << 7,
              ASStudentSubjectDrawing     = 1 << 8
    
} ASStudentSubject;




@interface ASStudent : NSObject

@property (assign , nonatomic) ASStudentSubject subjectType;
@property (strong , nonatomic) NSString* name;

-(id) initWithName:(NSString*) name;

@end
