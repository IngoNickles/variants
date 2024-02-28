#include "vector.h"


double get_vector_x (vector_t v){

  return v.x;
}

double get_vector_y (vector_t v){

  return v.y;
}

#ifdef THREE_DIMENSIONAL
double get_vector_z (vector_t v){

  return v.z;
}
#endif


double get_vector_product (vector_t v1, vector_t v2) 
{
  double result = 0;
  
  result = (v1.x*v2.x) + (v1.y*v2.y);
  
  #ifdef THREE_DIMENSIONAL
    result += v1.z*v2.z;
  #endif
  
  return result;
}

