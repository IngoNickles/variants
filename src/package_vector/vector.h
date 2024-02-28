#ifndef _VECTOR_H_
    #define _VECTOR_H_
    
    typedef struct vector {
        double x;
        double y;
        #ifdef THREE_DIMENSIONAL
        double z;
        #endif
    } vector_t;
    
#endif