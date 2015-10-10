
#import "ASStudent.h"

@implementation ASStudent

-(id) initWithName:(NSString*) name
{
    self = [super init];
    if (self) {
        _name = name;
        int maskEnum = 0;
        
        for (int i = 0; i < 9; i++)
            if (arc4random()%2)
            maskEnum = maskEnum | 1 << i;
            
           self.subjectType = maskEnum;
    }
    return self;
}


-(NSString*) description {
    
    return [NSString stringWithFormat: @"I am %@studies: \n"
                                        "Art  = %@ \n"
                                        "Math = %@ \n "
                                        "Programming = %@ \n"
                                        "Engineering = %@ \n"
                                        "Biology = %@ \n"
                                        "Phisics = %@ \n "
                                        "History = %@ \n"
                                        "Anatomy = %@ \n"
                                        "Drawing = %@ \n",
            self.name,
            [self disciplineType:   ASStudentSubjectArt],
            [self disciplineType:   ASStudentSubjectMath ],
            [self disciplineType:   ASStudentSubjectProgramming ],
            [self disciplineType:   ASStudentSubjecEngineering ],
            [self disciplineType:   ASStudentSubjectBiology ],
            [self disciplineType:   ASStudentSubjectPhisics ],
            [self disciplineType:   ASStudentSubjectHistory ],
            [self disciplineType:   ASStudentSubjecAnatomy ],
            [self disciplineType:   ASStudentSubjectDrawing ]];
}

-(NSString*) disciplineType: (ASStudentSubject) type {
    return  self.subjectType & type ? @"YES" : @"NO";
}

@end
