// CLASS VEC 1.1.0
///////////////////
/**
inspireted by GLSL code and PVector from Daniel Shiffman
https://github.com/StanLepunK/Vec
*/


/**
// VEC 2
////////////////
*/
class Vec2 {
  float ref_x, ref_y = 0 ;
  float x,y = 0;
  float s,t = 0;
  float u,v = 0;
  
  Vec2() {}
  
  Vec2(float value) {
    this.ref_x = this.ref_y = this.x = this.y = this.s = this.t = this.u = this.v = value ;
  }
  
  Vec2(float x, float y) {
    this.ref_x = this.x = this.s = this.u = x ;
    this.ref_y = this.y = this.t = this.v = y ;
  }
  
  // random generator for the Vec
  Vec2(String key_random, int r1) {
    if(key_random.equals("RANDOM")) {
    this.ref_x = this.x = this.s = this.u = random(-r1,r1) ;
    this.ref_y = this.y = this.t = this.v = random(-r1,r1) ;
    } else if(key_random.equals("RANDOM ZERO")) {
    this.ref_x = this.x = this.s = this.u = random(0,r1) ;
    this.ref_y = this.y = this.t = this.v = random(0,r1) ;
    } else {
      this.ref_x = this.ref_y = this.x = this.y = this.s = this.t = this.u = this.v = 0 ;
      println("the key word for the random is not available use the String 'RANDOM' or 'RANDOM ZERO' ") ;
    }
  }
  
  Vec2(String key_random, int r1, int r2) {
    if(key_random.equals("RANDOM")) {
    this.ref_x = this.x = this.s = this.u = random(-r1,r1) ;
    this.ref_y = this.y = this.t = this.v = random(-r2,r2) ;
    } else if(key_random.equals("RANDOM ZERO")) {
    this.ref_x = this.x = this.s = this.u = random(0,r1) ;
    this.ref_y = this.y = this.t = this.v = random(0,r2) ;
    } else {
      this.ref_x = this.ref_y = this.x = this.y = this.s = this.t = this.u = this.v = 0 ;
      println("the key word for the random is not available use the String 'RANDOM' or 'RANDOM ZERO' ") ;
    }
  }

  // Set Vector
   /**
   * Sets components of the vector using two or three separate
   * variables, the data from a Vec, or the values from a float array.
   */
  public Vec2 set(float x, float y) {
    this.x = x ;
    this.s = x ;
    this.u = x ;

    this.y = y ;
    this.t = y ;
    this.v = y ;
    return this;
  }


  /**
   * @param v any variable of type Vec
   */
  public Vec2 set(Vec2 value) {
    x = value.x ;
    s = value.x ;
    u = value.x ;

    y = value.y ;
    t = value.y ;
    v = value.y ;
    return this;
  }


  /**
   * Set the x, y (and maybe z) coordinates using a float[] array as the source.
   * @param source array to copy from
   */
  public Vec2 set(float[] source) {
    x = source[0];
    s = source[0];
    u = source[0];

    y = source[1];
    t = source[1];
    v = source[1];
    return this;
  }

  
  
  
  
  
  
  
  
  
  // multiplication
  /* multiply Vector by a same float value */
  Vec2 mult(float mult) {
    x *= mult ; 
    y *= mult ;

    set(x,y) ;
    return new Vec2(x,y);
  }
  
  /* multiply Vector by different float value */
  Vec2 mult(float mult_x, float mult_y) {
    x *= mult_x ; 
    y *= mult_y ;

    set(x,y) ;
    return new Vec2(x,y);
  }
  
  // mult by vector
  Vec2 mult(Vec2 v_a) {
    x *= v_a.x ; 
    y *= v_a.y ; 

    set(x,y) ;
    return new Vec2(x,y);
  }
  
  
    // division
  ///////////
  /*
  divide Vector by a float value */
  Vec2 div(float div) {
    x /= div ; y /= div ; 
    
    set(x,y) ;
    return new Vec2(x,y);
    
  }
  
  // divide by vector
  Vec2 div(Vec2 v_a) {
    x /= v_a.x ; y /= v_a.y ;  
    
    set(x,y) ;
    return new Vec2(x,y);
  }
  
  
  /* Addition
  @return Vec2
  */
  /* add float value */
  Vec2 add(float value) {
    x += value ;
    y += value ;
    
    set(x,y) ;
    return new Vec2(x,y);
  }

  Vec2 add(float value_a, float value_b) {
    x += value_a ;
    y += value_b ;
    
    set(x,y) ;
    return new Vec2(x,y);
  }
  /* add Vector */
  Vec2 add(Vec2 v_a) {
    x += v_a.x ;
    y += v_a.y ;
    
    set(x,y) ;
    return new Vec2(x,y);
  }
  /* add two Vector together */
  Vec2 add(Vec2 v_a, Vec2 v_b) {
    x = v_a.x + v_b.x ;
    y = v_a.y + v_b.y ;
    
    set(x,y) ;
    return new Vec2(x,y);
  }


  // substraction
    /* add float value */
  Vec2 sub(float value) {
    x -= value ;
    y -= value ;
    
    set(x,y) ;
    return new Vec2(x,y);
  }
  Vec2 sub(float value_a,float value_b) {
    x -= value_a ;
    y -= value_b ;
    
    set(x,y) ;
    return new Vec2(x,y);
  }
  /* add one Vector */
  Vec2 sub(Vec2 v_a) {
    x -= v_a.x ;
    y -= v_a.y ;
    
    set(x,y) ;
    return new Vec2(x,y);
  }
  
  /* add two Vector together */
  Vec2 sub(Vec2 v_a, Vec2 v_b) {
    x = v_a.x - v_b.x ;
    y = v_a.y - v_b.y ;
    
    set(x,y) ;
    return new Vec2(x,y);
  }


    // dot
  public float dot(Vec2 v) {
    return x*v.x + y*v.y;
  }
  public float dot(float x, float y) {
    return this.x*x + this.y*y ;
  }

  
  
  //direction of vector
  //return mapping vector
  // @return Vec2
  Vec2 dir() {
    return dir(Vec2(0)) ;
  }
  Vec2 dir(float a_x, float a_y) {
    return dir(Vec2(a_x,a_y)) ;
  }
  Vec2 dir(Vec2 origin) {
    float dist = dist(origin) ;
    sub(origin) ;
    div(dist) ;

    set(x,y) ;
    return new Vec2(x,y);
  }


  // tangent Vector
  Vec2 tan() {
    return tan(Vec2(x,y)) ;
  }
  Vec2 tan(float a_x, float a_y) {
    return tan(Vec2(a_x,a_y)) ;
  }

  Vec2 tan(Vec2 target) {
    float mag = mag() ;
    target.div(mag) ;
    x = -target.y ;
    y = target.x ;

    set(x,y) ;
    return new Vec2(x,y) ;
  }
  


    // find the min and the max value in the vector list
  // @ float
  float max_vec() {
    float [] list = { x, y} ;
    return max(list) ;
  }
  float min_vec() {
    float [] list = { x, y} ;
    return min(list) ;
  }
  /* normalize
  return mapping vector
  @return Vec2
  */
  Vec2 normalize(Vec2 min, Vec2 max) {
    x = map(x, min.x, max.x, 0, 1) ;
    y = map(y, min.y, max.y, 0, 1) ;
    
    set(x,y) ;
    return new Vec2(x,y) ;
  }
  
  Vec2 normalize(Vec2 max) {
    x = map(x, 0, max.x, 0, 1) ;
    y = map(y, 0, max.y, 0, 1) ;
    
    set(x,y) ;
    return new Vec2(x,y) ;
  }
  /* mapping
  return mapping vector
  @return Vec2
  */
  Vec2 mapVec(float minIn, float maxIn, float minOut, float maxOut) {
    x = map(x,minIn, maxIn, minOut, maxOut) ;
    y = map(y,minIn, maxIn, minOut, maxOut) ;
    
    set(x,y) ;
    return new Vec2(x,y) ;
  }
  
  /* magnitude or length of Vec2
  @ return float
  */
  /////////////////////
  float mag() {
    x *= x ;
    y *= y ; 
    return sqrt(x+y) ;
  }

  float mag(Vec2 v_target) {
    float new_x = (v_target.x -x) *(v_target.x -x) ;
    float new_y = (v_target.y -y) *(v_target.y -y) ;
    return sqrt(new_x +new_y) ;
  }
  
  
  // Distance
  ////////////
  /*
  @ return float
  distance between himself and an other vector
  */
  float dist(Vec2 v_target) {
    float dx = x - v_target.x;
    float dy = y - v_target.y;
    return (float) Math.sqrt(dx*dx + dy*dy);
  }
  
  
  // Jitter
  ////////////
  /* create jitter effect around the vector position */
  /* with global range */
  Vec2 jitter(int range) {
    x = ref_x ;
    y = ref_y ;
    x += random(-range, range) ;
    y += random(-range, range) ;
    
    set(x,y) ;
    return new Vec2(x,y) ;
  }
  /* with specific range */
  Vec2 jitter(int range_x,int range_y) {
    x = ref_x ;
    y = ref_y ;
    x += random(-range_x, range_x) ;
    y += random(-range_y, range_y) ;
    
    set(x,y) ;
    return new Vec2(x,y) ;
  }
  
  
  // Circular motion
  //////////////////
  /* create a circular motion effect */
  Vec2 circular(int diam, int speed) {
    /* may be change by 
    float new_speed = speed *.01 ;
    */
    float new_speed = speed /100. ; 
    x = ref_x ;
    y = ref_y ;
    float m_x = sin(frameCount *new_speed) ;
    float m_y = cos(frameCount *new_speed) ;
    m_x *= diam ;
    m_y *= diam ;
    
    return new Vec2(x +m_x, y +m_y) ;
  }
  
  // compare
  boolean compare(Vec2 target) {
    if(target != null ) {
      if((x == target.x) && (y == target.y)) {
              return true ; 
      } else return false ;
    } else return false ;
  }
    boolean compare(float target) {
    if((x == target) && (y == target)) 
    return true ; 
    else return false ;
  }
  
  boolean compare(float t_x,float t_y) {
    if((x == t_x) && (y == t_y)) 
    return true ; 
    else return false ;
  }
  
  
  
  /*catch info
  /////////////
  return all the component of Vec
  @return Vec2
  */
  Vec2 copy() {
    return new Vec2(x,y) ;
  }
  /*
  return all the component of Vec in type PVector
  @return PVector
  */
  PVector copy_PVector() {
    return new PVector(x,y) ;
  }


  // print info
  @ Override String toString() {
    return "[ " + x + ", " + y + " ]";
  }
}
// END VEC 2
////////////






/**
// VEC 3
////////////////
*/
class Vec3 {
  float ref_x, ref_y, ref_z = 0 ;
  float x,y,z  = 0 ;
  float r, g, b = 0 ;
  float s, t, p = 0 ;
  
  
  
  
  // CONSTRUCTOR
  Vec3() {}
  
  Vec3(float value) {
    this.ref_x = this.ref_y = this.ref_z = this.x = this.y = this.z  = this.r = this.g = this.b =this.s = this.t = this.p = value ;
  }
  
  Vec3(float x, float y, float z) {
    this.ref_x = this.x = this.r =this.s = x ;
    this.ref_y = this.y = this.g =this.t = y ;
    this.ref_z = this.z = this.b = this.p =z ;
  }
  
  
  // random generator for the Vec
  Vec3(String key_random, int r1) {
    if(key_random.equals("RANDOM")) {
    this.ref_x = this.x = this.r =this.s = random(-r1,r1) ;
    this.ref_y = this.y = this.g =this.t = random(-r1,r1) ;
    this.ref_z = this.z = this.b = this.p = random(-r1,r1) ;
    } else if(key_random.equals("RANDOM ZERO")) {
    this.ref_x = this.x = this.r =this.s = random(0,r1) ;
    this.ref_y = this.y = this.g =this.t = random(0,r1) ;
    this.ref_z = this.z = this.b = this.p = random(0,r1) ;
    } else {
      this.ref_x = this.ref_y = this.ref_z = this.x = this.y = this.z  = this.r = this.g = this.b =this.s = this.t = this.p = 0 ;
      println("the key word for the random is not available use the String 'RANDOM' or 'RANDOM ZERO' ") ;
    }
  }
  
  Vec3(String key_random, int r1, int r2, int r3) {
    if(key_random.equals("RANDOM")) {
    this.ref_x = this.x = this.r =this.s = random(-r1,r1) ;
    this.ref_y = this.y = this.g =this.t = random(-r2,r2) ;
    this.ref_z = this.z = this.b = this.p = random(-r3,r3) ;
    } else {
      this.ref_x = this.ref_y = this.ref_z = this.x = this.y = this.z  = this.r = this.g = this.b =this.s = this.t = this.p = 0 ;
      println("the key word for the random is not available use the String 'RANDOM' or 'RANDOM ZERO' ") ;
    }
  }



    // Set Vector
   /**
   * Sets components of the vector using two or three separate
   * variables, the data from a Vec, or the values from a float array.
   */
  public Vec3 set(float x, float y, float z) {
    this.x = x ;
    r = x ;
    s = x ;
    this.y = y;
    g = y;
    t = y ;
    this.z = z;
    b = z;
    p = z ;
    return this;
  }


  /**
   * @param v any variable of type Vec
   */
  public Vec3 set(Vec3 value) {
    x = value.x ;
    r = value.x ;
    s = value.x ;

    y = value.y ;
    g = value.y ;
    t = value.y ;

    z = value.z ;
    b = value.z ;
    p = value.z ;
    return this;
  }


  /**
   * Set the x, y (and maybe z) coordinates using a float[] array as the source.
   * @param source array to copy from
   */
  public Vec3 set(float[] source) {
    x = source[0] ;
    r = source[0] ;
    s = source[0] ;

    y = source[1] ;
    g = source[1] ;
    t = source[1] ;

    z = source[2] ;
    b = source[2] ;
    p = source[2] ;
    return this;
  }
  
  
  
  
  
  
  
  
  
  
  
  // METHOD
  //////////////////////
  // multiplication
  /* multiply Vector by a same float value */
  Vec3 mult(float mult) {
    x *= mult ; y *= mult ; z *= mult ;
    
    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  
  /* multiply Vector by a different float value */
  Vec3 mult(float mult_x, float mult_y, float mult_z) {
    x *= mult_x ; y *= mult_y ; z *= mult_z ;
    
    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  
  // mult by vector
  Vec3 mult(Vec3 v_a) {
    x *= v_a.x ; y *= v_a.y ; z *= v_a.z ; 
    
    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  
  
  
  // division
  ///////////
  /*
  @ return Vec
  divide Vector by a float value */
  Vec3 div(float div) {
    x /= div ; y /= div ; z /= div ;
    
    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  
  // divide by vector
  Vec3 div(Vec3 v_a) {
    x /= v_a.x ; y /= v_a.y ; z /= v_a.z ; 
    
    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  
  
  
  // addition
    /* add float value */
  Vec3 add(float value) {
    x += value ;
    y += value ;
    z += value ;
    
    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  Vec3 add(float value_a,float value_b,float value_c) {
    x += value_a ;
    y += value_b ;
    z += value_c ;
    
    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  /* add one Vector */
  Vec3 add(Vec3 v_a) {
    x += v_a.x ;
    y += v_a.y ;
    z += v_a.z ;
    
    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  
  /* add two Vector together */
  Vec3 add(Vec3 v_a, Vec3 v_b) {
    x = v_a.x + v_b.x ;
    y = v_a.y + v_b.y ;
    z = v_a.z + v_b.z ;

    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }



  // substraction
    /* add float value */
  Vec3 sub(float value) {
    x -= value ;
    y -= value ;
    z -= value ;
    
    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  Vec3 sub(float value_a,float value_b,float value_c) {
    x -= value_a ;
    y -= value_b ;
    z -= value_c ;

    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  /* add one Vector */
  Vec3 sub(Vec3 v_a) {
    x -= v_a.x ;
    y -= v_a.y ;
    z -= v_a.z ;

    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  
  /* add two Vector together */
  Vec3 sub(Vec3 v_a, Vec3 v_b) {
    x = v_a.x - v_b.x ;
    y = v_a.y - v_b.y ;
    z = v_a.z - v_b.z ;

    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }


  // dot
  public float dot(Vec3 v) {
    return x*v.x + y*v.y + z*v.z;
  }
  public float dot(float x, float y, float z) {
    return this.x*x + this.y*y + this.z*z;
  }

  // CROSS
  /////////
  Vec3 cross(Vec3 v) {
    return cross(v, null);
  }
  Vec3 cross(float x, float y, float z) {
    Vec3 v = Vec3(x,y,z) ;
    return cross(v, null);
  }

  Vec3 cross(Vec3 v, Vec3 target) {
    float crossX = y*v.z - v.y*z;
    float crossY = z*v.x - v.z*x;
    float crossZ = x*v.y - v.x*y;

    if (target == null) {
      target = Vec3(crossX, crossY, crossZ);
    } else {
      target.set(crossX, crossY, crossZ);
    }
    return target;
  }
  


  // direction cartesian
  Vec3 dir() {
    return dir(Vec3(0)) ;
  }
  Vec3 dir(float a_x, float a_y, float a_z) {
    return dir(Vec3(a_x,a_y,a_z)) ;
  }
  Vec3 dir(Vec3 origin) {
    float dist = dist(origin) ;
    sub(origin) ;
    div(dist) ;

    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  
  

  // tangent Vector
  // to find the tangent you need to associate an other vector of your dir vector to create a reference plane.
  Vec3 tan(float float_to_make_plane_ref_x, float float_to_make_plane_ref_y, float float_to_make_plane_ref_z) {
    return tan(Vec3(float_to_make_plane_ref_x, float_to_make_plane_ref_y, float_to_make_plane_ref_z)) ;
  }

  Vec3 tan(Vec3 vector_to_make_plane_ref) {
    Vec3 tangent = cross(vector_to_make_plane_ref) ;
    return tangent ;
  }
  


  // find the min and the max value in the vector list
  // @ float
  float max_vec() {
    float [] list = { x, y, z } ;
    return max(list) ;
  }
  float min_vec() {
    float [] list = { x, y, z } ;
    return min(list) ;
  }






  /*
  normalization
  return mapping vector
  @return Vec3
  */
  Vec3 normalize(Vec3 min, Vec3 max) {
    x = map(x, min.x, max.x, 0, 1) ;
    y = map(y, min.y, max.y, 0, 1) ;
    z = map(z, min.z, max.z, 0, 1) ;
    
    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  
  Vec3 normalize(Vec3 max) {
    x = map(x, 0, max.x, 0, 1) ;
    y = map(y, 0, max.y, 0, 1) ;
    z = map(z, 0, max.z, 0, 1) ;

    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  /*
  mapping
  return mapping vector
  @return Vec3
  */
  Vec3 mapVec(float minIn, float maxIn, float minOut, float maxOut) {
    x = map(x, minIn, maxIn, minOut, maxOut) ;
    y = map(y, minIn, maxIn, minOut, maxOut) ;
    z = map(z, minIn, maxIn, minOut, maxOut) ;

    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  
  
  
  // Magnitude
  ////////////
  /* Magnitude or length of Vec3
  @ return float
  */
  /////////////////////
  float mag() {
    x *= x ;
    y *= y ; 
    z *= z ;
    return sqrt(x+y+z) ;
  }

  float mag(Vec3 v_target) {
    float new_x = (v_target.x -x) *(v_target.x -x) ;
    float new_y = (v_target.y -y) *(v_target.y -y) ;
    float new_z = (v_target.z -z) *(v_target.z -z) ;
    return sqrt(new_x +new_y +new_z) ;
  }
  
  // Distance
  ////////////
  /*
  @ return float
  distance himself and an other vector
  */
  float dist(Vec3 v_target) {
    float dx = x - v_target.x;
    float dy = y - v_target.y;
    float dz = z - v_target.z;
    return (float) Math.sqrt(dx*dx + dy*dy + dz*dz);
  }
  
  // Jitter
  ////////////
  /* create jitter effect around the vector position */
  /* with global range */
  Vec3 jitter(int range) {
    x = ref_x ;
    y = ref_y ;
    z = ref_z ;
    x += random(-range, range) ;
    y += random(-range, range) ;
    z += random(-range, range) ;

    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  /* with specific range */
  Vec3 jitter(int range_x,int range_y,int range_z) {
    x = ref_x ;
    y = ref_y ;
    z = ref_z ;
    x += random(-range_x, range_x) ;
    y += random(-range_y, range_y) ;
    z += random(-range_z, range_z) ;

    set(x,y,z) ;
    return new Vec3(x,y,z) ;
  }
  
  
  // compare
  boolean compare(Vec3 target) {
    if(target != null ) {
      if((x == target.x) && (y == target.y) && (z == target.z)) {
              return true ; 
      } else return false ;
    } else return false ;
  }
  
  boolean compare(float target) {
    if((x == target) && (y == target) && (z == target)) 
    return true ; 
    else return false ;
  }
  
  boolean compare(float t_x,float t_y,float t_z) {
    if((x == t_x) && (y == t_y) && (z == t_z)) 
    return true ; 
    else return false ;
  }
  


  
  
  // catch info
  /////////////
  /*
  return all the component of Vec
  @return Vec3
  */
  Vec3 copy() {
    return new Vec3(x,y,z) ;
  }
  /*
  return all the component of Vec in type PVector
  @return PVector
  */
  PVector copy_PVector() {
    return new PVector(x,y,z) ;
  }

  // print info
  @ Override String toString() {
    return "[ " + x + ", " + y + ", " + z + " ]";
  }
  
  
}
// END VEC 3
////////////





/**
// VEC 4
////////
*/
class Vec4 {
  float ref_x, ref_y, ref_z, ref_w = 0 ;
  float x,y,z,w = 0 ;
  float r, g, b, a = 0 ;
  float s, t, p, q = 0 ;
  
  Vec4 () {}
  
  Vec4(float value) {
    this.ref_x = this.ref_y = this.ref_z = this.ref_w = this.x = this.y = this.z = this.w = this.r = this.g = this.b = this.a =this.s = this.t = this.p = this.q = value ;
  }
  
  Vec4(float x, float y, float z, float w) {
    this.ref_x = this.x = this.r = this.s = x ;
    this.ref_y = this.y = this.g = this.t =y ;
    this.ref_z = this.z = this.b = this.p =z ;
    this.ref_w = this.w = this.a = this.q = w ;
  }
  
  // random generator for the Vec
  Vec4(String key_random, int r1) {
    if(key_random.equals("RANDOM")) {
    this.ref_x = this.x = this.r =this.s = random(-r1,r1) ;
    this.ref_y = this.y = this.g =this.t = random(-r1,r1) ;
    this.ref_z = this.z = this.b = this.p = random(-r1,r1) ;
    this.ref_w = this.w = this.a = this.q = random(-r1,r1) ;
    } else if(key_random.equals("RANDOM ZERO")) {
    this.ref_x = this.x = this.r =this.s = random(0,r1) ;
    this.ref_y = this.y = this.g =this.t = random(0,r1) ;
    this.ref_z = this.z = this.b = this.p = random(0,r1) ;
    this.ref_w = this.w = this.a = this.q = random(0,r1) ;
    } else {
      this.ref_x = this.ref_y = this.ref_z = this.ref_w = this.x = this.y = this.z = this.w = this.r = this.g = this.b = this.a =this.s = this.t = this.p = this.q = 0 ;
      println("the key word for the random is not available use the String 'RANDOM' or 'RANDOM ZERO' ") ;
    }
  }
  
  Vec4(String key_random, int r1, int r2, int r3, int r4) {
    if(key_random.equals("RANDOM")) {
    this.ref_x = this.x = this.r =this.s = random(-r1,r1) ;
    this.ref_y = this.y = this.g =this.t = random(-r2,r2) ;
    this.ref_z = this.z = this.b = this.p = random(-r3,r3) ;
    this.ref_w = this.w = this.a = this.q = random(-r4,r4) ;
    } else if(key_random.equals("RANDOM")) {
    this.ref_x = this.x = this.r =this.s = random(0,r1) ;
    this.ref_y = this.y = this.g =this.t = random(0,r2) ;
    this.ref_z = this.z = this.b = this.p = random(0,r3) ;
    this.ref_w = this.w = this.a = this.q = random(0,r4) ;
    } else {
      this.ref_x = this.ref_y = this.ref_z = this.ref_w = this.x = this.y = this.z = this.w = this.r = this.g = this.b = this.a =this.s = this.t = this.p = this.q = 0 ;
      println("the key word for the random is not available use the String 'RANDOM' or 'RANDOM ZERO' ") ;
    }
  }
  
  // Set Vector
   /**
   * Sets components of the vector using two or three separate
   * variables, the data from a Vec, or the values from a float array.
   */
  public Vec4 set(float x, float y, float z, float w) {
    this.x = x ;
    r = x ;
    s = x ;
    this.y = y;
    g = y;
    t = y ;
    this.z = z;
    b = z;
    p = z ;
    this.w = w;
    a = w ;
    q = w ;
    return this;
  }


  /**
   * @param v any variable of type Vec
   */
  public Vec4 set(Vec4 value) {
    x = value.x ;
    r = value.x ;
    s = value.x ;

    y = value.y ;
    g = value.y ;
    t = value.y ;

    z = value.z ;
    b = value.z ;
    p = value.z ;

    w = value.w ;
    a = value.w ;
    q = value.w ;
    return this;
  }


  /**
   * Set the x, y (and maybe z) coordinates using a float[] array as the source.
   * @param source array to copy from
   */
  public Vec4 set(float[] source) {
    x = source[0] ;
    r = source[0] ;
    s = source[0] ;

    y = source[1] ;
    g = source[1] ;
    t = source[1] ;

    z = source[2] ;
    b = source[2] ;
    p = source[2] ;

    w = source[3] ;
    a = source[3] ;
    q = source[3] ;
    return this;
  }
  
  
  
  
  
  // METHOD
  
  // multiplication
  // mult by a same float
  Vec4 mult(float mult) {
    x *= mult ; y *= mult ; z *= mult ; w *= mult ;

    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  
    // mult by a different float
  Vec4 mult(float mult_x, float mult_y, float mult_z, float mult_w) {
    x *= mult_x ; y *= mult_y ; z *= mult_z ; w *= mult_w ;

    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  
  // mult by vector
  Vec4 mult(Vec4 v_a) {
    x *= v_a.x ; y *= v_a.y ; z *= v_a.z ; w *= v_a.w ;

    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  
  
    // division
  ///////////
  /*
  @ return Vec
  divide Vector by a float value */
  Vec4 div(float div) {
    x /= div ; y /= div ; z /= div ; w /= div ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  
  // divide by vector
  Vec4 div(Vec4 v_a) {
    x /= v_a.x ; y /= v_a.y ; z /= v_a.z ; w /= v_a.w ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  
  
  // addition
    /* add float value */
  Vec4 add(float value) {
    x += value ;
    y += value ;
    z += value ;
    w += value ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  Vec4 add(float value_a,float value_b,float value_c,float value_d) {
    x += value_a ;
    y += value_b ;
    z += value_c ;
    w += value_d ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  /* add vec */
  Vec4 add(Vec4 v_a) {
    x += v_a.x ;
    y += v_a.y ;
    z += v_a.z ;
    w += v_a.w ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w)  ;
  }
  /* add two Vector together */
  Vec4 add(Vec4 v_a, Vec4 v_b) {
    x = v_a.x + v_b.x ;
    y = v_a.y + v_b.y ;
    z = v_a.z + v_b.z ;
    w = v_a.w + v_b.w ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }

    // substraction
    /* add float value */
  Vec4 sub(float value) {
    x -= value ;
    y -= value ;
    z -= value ;
    w -= value ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  Vec4 sub(float value_a,float value_b,float value_c, float value_d) {
    x -= value_a ;
    y -= value_b ;
    z -= value_c ;
    w -= value_d ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  /* add one Vector */
  Vec4 sub(Vec4 v_a) {
    x -= v_a.x ;
    y -= v_a.y ;
    z -= v_a.z ;
    w -= v_a.w ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  
  /* add two Vector together */
  Vec4 sub(Vec4 v_a, Vec4 v_b) {
    x = v_a.x - v_b.x ;
    y = v_a.y - v_b.y ;
    z = v_a.z - v_b.z ;
    w = v_a.w - v_b.w ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }

    // dot
  public float dot(Vec4 v) {
    return x*v.x + y*v.y + z*v.z + w*this.w;
  }
  public float dot(float x, float y, float z, float w) {
    return this.x*x + this.y*y + this.z*z + this.w*w;
  }



    // return cartesian direction
  Vec4 dir() {
    return dir(Vec4(0)) ;
  }
  Vec4 dir(float a_x, float a_y, float a_z, float a_w) {
    return dir(Vec4(a_x,a_y,a_z,a_w)) ;
  }
  Vec4 dir(Vec4 origin) {
    float dist = dist(origin) ;
    sub(origin) ;
    div(dist) ;

    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  
  
    // find the min and the max value in the vector list
  // @ float
  float max_vec() {
    float [] list = { x, y, z, w } ;
    return max(list) ;
  }
  float min_vec() {
    float [] list = { x, y, z,w } ;
    return min(list) ;
  }
  /*
  normalization
  return mapping vector
  @return Vec3
  */
  Vec4 normalize(Vec4 min, Vec4 max) {
    x = map(x, min.x, max.x, 0, 1) ;
    y = map(y, min.y, max.y, 0, 1) ;
    z = map(z, min.z, max.z, 0, 1) ;
    w = map(w, min.w, max.w, 0, 1) ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  
  Vec4 normalize(Vec4 max) {
    x = map(x, 0, max.x, 0, 1) ;
    y = map(y, 0, max.y, 0, 1) ;
    z = map(z, 0, max.z, 0, 1) ;
    w = map(w, 0, max.w, 0, 1) ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  /* mapping
  return mapping vector
  @return Vec4
  */
  Vec4 mapVec(float minIn, float maxIn, float minOut, float maxOut) {
    x = map(x, minIn, maxIn, minOut, maxOut) ;
    y = map(y, minIn, maxIn, minOut, maxOut) ;
    z = map(z, minIn, maxIn, minOut, maxOut) ;
    w = map(w, minIn, maxIn, minOut, maxOut) ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  
  // magnitude or length
  /////////////////////
  float mag() {
    x *= x ;
    y *= y ; 
    z *= z ;
    w *= w ;  ;
    return sqrt(x+y+z+w) ;
  }

  float mag(Vec4 v_target) {
    float new_x = (v_target.x -x) *(v_target.x -x) ;
    float new_y = (v_target.y -y) *(v_target.y -y) ;
    float new_z = (v_target.z -z) *(v_target.z -z) ;
    float new_w = (v_target.w -w) *(v_target.w -w) ;
    return sqrt(new_x +new_y +new_z +new_w) ;
  }
  
  // Distance
  ////////////
  // distance himself and an other vector
  float dist(Vec4 v_target) {
    float dx = x - v_target.x;
    float dy = y - v_target.y;
    float dz = z - v_target.z;
    float dw = w - v_target.w;
    return (float) Math.sqrt(dx*dx + dy*dy + dz*dz + dw*dw);
  }
  
  
    // Jitter
  ////////////
  /* create jitter effect around the vector position */
  /* with global range */
  Vec4 jitter(int range) {
    x = ref_x ;
    y = ref_y ;
    z = ref_z ;
    w = ref_w ;
    x += random(-range, range) ;
    y += random(-range, range) ;
    z += random(-range, range) ;
    w += random(-range, range) ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  /* with specific range */
  Vec4 jitter(int range_x,int range_y,int range_z,int range_w) {
    x = ref_x ;
    y = ref_y ;
    z = ref_z ;
    w = ref_w ;
    x += random(-range_x, range_x) ;
    y += random(-range_y, range_y) ;
    z += random(-range_z, range_z) ;
    w += random(-range_z, range_z) ;
    
    set(x,y,z,w) ;
    return new Vec4(x,y,z,w) ;
  }
  
   
  // compare
  boolean compare(Vec4 target) {
    if(target != null ) {
      if((x == target.x) && (y == target.y) && (z == target.z) && (w == target.w)) {
              return true ; 
      } else return false ;
    } else return false ;
  }
  boolean compare(float target) {
    if((x == target) && (y == target) && (z == target) && (w == target)) 
    return true ; 
    else return false ;
  }
  
  boolean compare(float t_x,float t_y,float t_z,float t_w) {
    if((x == t_x) && (y == t_y) && (z == t_z)&& (w == t_w)) 
    return true ; 
    else return false ;
  }
  
  // catch info
  /////////////
  Vec4 copy() {
    return new Vec4(x,y,z,w) ;
  }

    // print info
  @ Override String toString() {
    return "[ " + x + ", " + y + ", " + z + ", " + w + " ]";
  }
}
// END VEC 4
////////////


/**
// CLASS Vec5
/////////////
*/
class Vec5 {
  float a,b,c,d,e = 0 ;

  
  Vec5 () {}
  
  Vec5(float value) {
    this.a = this.b = this.c = this.d = this.e = value ;
  }
  
  Vec5(float a, float b, float c, float d, float e) {
    this.a = a ;
    this.b = b ;
    this.c = c ;
    this.d = d ;
    this.e = e ;
  }
  
  
  
  
  // random generator for the Vec
  Vec5(String key_random, int r1) {
    if(key_random.equals("RANDOM")) {
    this.a = random(-r1,r1) ;
    this.b = random(-r1,r1) ;
    this.c = random(-r1,r1) ;
    this.d = random(-r1,r1) ;
    this.e = random(-r1,r1) ;
    } else if(key_random.equals("RANDOM ZERO")) {
    this.a = random(0,r1) ;
    this.b = random(0,r1) ;
    this.c = random(0,r1) ;
    this.d = random(0,r1) ;
    this.e = random(0,r1) ;
    } else {
      this.a = this.b = this.c = this.d = this.e = 0 ;
      println("the key word for the random is not available use the String 'RANDOM' or 'RANDOM ZERO' ") ;
    }
  }
  
  Vec5(String key_random, int r1, int r2, int r3, int r4, int r5) {
    if(key_random.equals("RANDOM")) {
    this.a = random(-r1,r1) ;
    this.b = random(-r2,r2) ;
    this.c = random(-r3,r3) ;
    this.d = random(-r4,r4) ;
    this.e = random(-r5,r5) ;
    } else if(key_random.equals("RANDOM ZERO")) {
    this.a = random(0,r1) ;
    this.b = random(0,r2) ;
    this.c = random(0,r3) ;
    this.d = random(0,r4) ;
    this.e = random(0,r5) ;
    } else {
      this.a = this.b = this.c = this.d = this.e = 0 ;
      println("the key word for the random is not available use the String 'RANDOM' or 'RANDOM ZERO' ") ;
    }
  }


   // Set Vector
   /**
   * Sets components of the vector using two or three separate
   * variables, the data from a Vec, or the values from a float array.
   */
  public Vec5 set(float a, float b, float c, float d, float e) {
    this.a = a ;
    this.b = b;
    this.c = c;
    this.d = d;
    this.e = e;
    return this;
  }


  /**
   * @param v any variable of type Vec
   */
  public Vec5 set(Vec5 value) {
    a = value.a ;
    b = value.b ;
    c = value.c ;
    d = value.d ;
    e = value.e ;
    return this;
  }


  /**
   * Set the x, y (and maybe z) coordinates using a float[] array as the source.
   * @param source array to copy from
   */
  public Vec5 set(float[] source) {
    a = source[0] ;
    b = source[1] ;
    c = source[2] ;
    d = source[3] ;
    e = source[4] ;
    return this;
  }
  
    // find the min and the max value in the vector list
  // @ float
  float max_vec() {
    float [] list = { a,b,c,d,e} ;
    return max(list) ;
  }
  float min_vec() {
    float [] list = {a,b,c,d,e} ;
    return min(list) ;
  }
  
  // catch info
  /////////////
  Vec5 copy() {
    return new Vec5(a,b,c,d,e) ;
  }
  
  // print info
  @ Override String toString() {
    return "[ " + a + ", " + b + ", " + c + ", " + d + ", " + e + " ]";
  }
}

// END VEC 5
////////////


/**
// CLASS Vec6
/////////////
*/
class Vec6 {
  float a,b,c,d,e,f = 0 ;

  
  Vec6 () {}
  
  Vec6(float value) {
    this.a = this.b = this.c = this.d = this.e = this.f = value ;
  }
  
  Vec6(float a, float b, float c, float d, float e, float f) {
    this.a = a ;
    this.b = b ;
    this.c = c ;
    this.d = d ;
    this.e = e ;
    this.f = f ;
  }
  
  
  Vec6(String key_random, int r1) {
    if(key_random.equals("RANDOM")) {
    this.a = random(-r1,r1) ;
    this.b = random(-r1,r1) ;
    this.c = random(-r1,r1) ;
    this.d = random(-r1,r1) ;
    this.e = random(-r1,r1) ;
    } else if(key_random.equals("RANDOM ZERO")) {
    this.a = random(0,r1) ;
    this.b = random(0,r1) ;
    this.c = random(0,r1) ;
    this.d = random(0,r1) ;
    this.e = random(0,r1) ;
    } else {
      this.a = this.b = this.c = this.d = this.e = this.f = 0 ;
      println("the key word for the random is not available use the String 'RANDOM' or 'RANDOM ZERO' ") ;
    }
  }
  
  Vec6(String key_random, int r1, int r2, int r3, int r4, int r5, int r6) {
    if(key_random.equals("RANDOM")) {
    this.a = random(-r1,r1) ;
    this.b = random(-r2,r2) ;
    this.c = random(-r3,r3) ;
    this.d = random(-r4,r4) ;
    this.e = random(-r5,r5) ;
    this.f = random(-r6,r6) ;
    } else if(key_random.equals("RANDOM")) {
    this.a = random(0,r1) ;
    this.b = random(0,r2) ;
    this.c = random(0,r3) ;
    this.d = random(0,r4) ;
    this.e = random(0,r5) ;
    this.f = random(0,r6) ;
    } else {
      this.a = this.b = this.c = this.d = this.e = this.f = 0 ;
      println("the key word for the random is not available use the String 'RANDOM' or 'RANDOM ZERO' ") ;
    }
  }

     // Set Vector
   /**
   * Sets components of the vector using two or three separate
   * variables, the data from a Vec, or the values from a float array.
   */
  public Vec6 set(float a, float b, float c, float d, float e, float f) {
    this.a = a ;
    this.b = b ;
    this.c = c ;
    this.d = d ;
    this.e = e ;
    this.f = f ;
    return this;
  }


  /**
   * @param v any variable of type Vec
   */
  public Vec6 set(Vec6 value) {
    a = value.a ;
    b = value.b ;
    c = value.c ;
    d = value.d ;
    e = value.e ;
    f = value.f ;
    return this;
  }


  /**
   * Set the x, y (and maybe z) coordinates using a float[] array as the source.
   * @param source array to copy from
   */
  public Vec6 set(float[] source) {
    a = source[0] ;
    b = source[1] ;
    c = source[2] ;
    d = source[3] ;
    e = source[4] ;
    f = source[5] ;
    return this;
  }



      // find the min and the max value in the vector list
  // @ float
  float max_vec() {
    float [] list = {a,b,c,d,e,f} ;
    return max(list) ;
  }
  float min_vec() {
    float [] list = {a,b,c,d,e,f} ;
    return min(list) ;
  }
  // catch info
  /////////////
  Vec6 copy() {
    return new Vec6(a,b,c,d,e,f) ;
  }

    // print info
  @ Override String toString() {
    return "[ " + a + ", " + b + ", " + c + ", " + d + ", " + e + ", " + f + " ]" ;
  }
}

// END VEC 5
////////////











/**
// External Methods VEC
///////////////////////
*/


// Addition
// return the resultat of vector addition
Vec2 add(Vec2 v_a, Vec2 v_b) {
    float x = v_a.x + v_b.x ;
    float y = v_a.y + v_b.y ;
    return new Vec2(x,y) ;
}
Vec3 add(Vec3 v_a, Vec3 v_b) {
    float x = v_a.x + v_b.x ;
    float y = v_a.y + v_b.y ;
    float z = v_a.z + v_b.z ;
    return new Vec3(x,y,z)  ;
}
Vec4 add(Vec4 v_a, Vec4 v_b) {
    float x = v_a.x + v_b.x ;
    float y = v_a.y + v_b.y ;
    float z = v_a.z + v_b.z ;
    float w = v_a.w + v_b.w ;
    return new Vec4(x,y,z, w)  ;
}


// Multiplication
// return the resultat of vector multiplication
Vec2 mult(Vec2 v_a, Vec2 v_b) {
    float x = v_a.x * v_b.x ;
    float y = v_a.y * v_b.y ;
    return new Vec2(x,y) ;
}
Vec3 mult(Vec3 v1, Vec3 v_b) {
    float x = v1.x * v_b.x ;
    float y = v1.y * v_b.y ;
    float z = v1.z * v_b.z ;
    return new Vec3(x,y,z)  ;
}
Vec4 mult(Vec4 v_a, Vec4 v_b) {
    float x = v_a.x * v_b.x ;
    float y = v_a.y * v_b.y ;
    float z = v_a.z * v_b.z ;
    float w = v_a.w * v_b.w ;
    return new Vec4(x,y,z, w)  ;
}


// Division
// return the resultat of vector addition
Vec2 div(Vec2 v_a, Vec2 v_b) {
    float x = v_a.x / v_b.x ;
    float y = v_a.y / v_b.y ;
    return new Vec2(x,y) ;
}
Vec3 div(Vec3 v1, Vec3 v_b) {
    float x = v1.x / v_b.x ;
    float y = v1.y / v_b.y ;
    float z = v1.z / v_b.z ;
    return new Vec3(x,y,z)  ;
}
Vec4 div(Vec4 v_a, Vec4 v_b) {
    float x = v_a.x / v_b.x ;
    float y = v_a.y / v_b.y ;
    float z = v_a.z / v_b.z ;
    float w = v_a.w / v_b.w ;
    return new Vec4(x,y,z, w)  ;
}


// Addition
// return the resultat of vector substraction
Vec2 sub(Vec2 v_a, Vec2 v_b) {
    float x = v_a.x - v_b.x ;
    float y = v_a.y - v_b.y ;
    return new Vec2(x,y) ;
}
Vec3 sub(Vec3 v_a, Vec3 v_b) {
    float x = v_a.x - v_b.x ;
    float y = v_a.y - v_b.y ;
    float z = v_a.z - v_b.z ;
    return new Vec3(x,y,z)  ;
}
Vec4 sub(Vec4 v_a, Vec4 v_b) {
    float x = v_a.x - v_b.x ;
    float y = v_a.y - v_b.y ;
    float z = v_a.z - v_b.z ;
    float w = v_a.w - v_b.w ;
    return new Vec4(x,y,z, w)  ;
}



Vec3 cross(Vec3 v1, Vec3 v2, Vec3 target) {
  float crossX = v1.y * v2.z - v2.y * v1.z;
  float crossY = v1.z * v2.x - v2.z * v1.x;
  float crossZ = v1.x * v2.y - v2.x * v1.y;

  if (target == null) {
    target = Vec3(crossX, crossY, crossZ);
  } else {
    target.set(crossX, crossY, crossZ);
  }
  return target;
}






// Compare Vector with or without area

// compare two vectors Vec without area
/*
@ return boolean
*/
// Vec method
// Vec2 compare
boolean compare(Vec2 v_a, Vec2 v_b) {
  return compare(Vec4(v_a.x,v_a.y,0,0),Vec4(v_b.x,v_b.y,0,0)) ;
}

// Vec3 compare
boolean compare(Vec3 v_a, Vec3 v_b) {
  return compare(Vec4(v_a.x, v_a.y, v_a.z, 0),Vec4(v_b.x, v_b.y, v_b.z, 0)) ;
}
// Vec4 compare
boolean compare(Vec4 v_a, Vec4 v_b) {
  if( v_a != null && v_b != null ) {
    if((v_a.x == v_b.x) && (v_a.y == v_b.y) && (v_a.z == v_b.z) && (v_a.w == v_b.w)) {
            return true ; 
    } else return false ;
  } else return false ;
}


/* 
compare if the first vector is in the area of the second vector, 
the area of the second vector is define by a Vec area, 
that give the possibility of different size for each component
*/
/*
@ return boolean
*/
// Vec method
// Vec2 compare with area
boolean compare(Vec2 v_a, Vec2 v_b, Vec2 area) {
  return compare(Vec4(v_a.x, v_a.y, 0, 0),Vec4(v_b.x, v_b.y, 0, 0),Vec4(area.x, area.y, 0, 0)) ;
}
// Vec3 compare with area
boolean compare(Vec3 v_a, Vec3 v_b, Vec3 area) {
  return compare(Vec4(v_a.x, v_a.y, v_a.z, 0),Vec4(v_b.x, v_b.y, v_b.z, 0),Vec4(area.x, area.y, area.z, 0)) ;
}
// Vec4 compare with area
boolean compare(Vec4 v_a, Vec4 v_b, Vec4 area) {
  if( v_a != null && v_b != null && area != null ) {
    if(    (v_a.x >= v_b.x -area.x && v_a.x <= v_b.x +area.x) 
        && (v_a.y >= v_b.y -area.y && v_a.y <= v_b.y +area.y) 
        && (v_a.z >= v_b.z -area.z && v_a.z <= v_b.z +area.z) 
        && (v_a.w >= v_b.w -area.w && v_a.w <= v_b.w +area.w)) {
            return true ; 
    } else return false ;
  } else return false ;
}



/* Map
return mapping vector
@return Vec2, Vec3 or Vec4
*/
Vec2 mapVec(Vec2 v,float minIn, float maxIn, float minOut, float maxOut) {
  float x = map(v.x, minIn, maxIn, minOut, maxOut) ;
  float y = map(v.y, minIn, maxIn, minOut, maxOut) ;
  return new Vec2(x,y) ;
}
Vec3 mapVec(Vec3 v,float minIn, float maxIn, float minOut, float maxOut) {
  float x = map(v.x, minIn, maxIn, minOut, maxOut) ;
  float y = map(v.y, minIn, maxIn, minOut, maxOut) ;
  float z = map(v.z, minIn, maxIn, minOut, maxOut) ;
  return new Vec3(x,y,z) ;
}
Vec4 mapVec(Vec4 v,float minIn, float maxIn, float minOut, float maxOut) {
  float x = map(v.x, minIn, maxIn, minOut, maxOut) ;
  float y = map(v.y, minIn, maxIn, minOut, maxOut) ;
  float z = map(v.z, minIn, maxIn, minOut, maxOut) ;
  float w = map(v.w, minIn, maxIn, minOut, maxOut) ;
  return new Vec4(x,y,z,w) ;
}


// Magnitude or Length Vector
/*
@return float
*/
// mag Vec2
float mag(Vec2 v_a) {
  float x = v_a.x*v_a.x ;
  float y = v_a.y *v_a.y ;
  return sqrt(x+y) ;
}

float mag(Vec2 v_a, Vec2 v_b) {
  // same result than dist
  float x = (v_b.x -v_a.x)*(v_b.x -v_a.x) ;
  float y = (v_b.y -v_a.y)*(v_b.y -v_a.y) ;
  return sqrt(x+y) ;
}
// mag Vec3
float mag(Vec3 v_a) {
  float x = v_a.x*v_a.x ;
  float y = v_a.y *v_a.y ;
  float z = v_a.z *v_a.z ;
  return sqrt(x+y+z) ;
}

float mag(Vec3 v_a, Vec3 v_b) {
  // same result than dist
  float x = (v_b.x -v_a.x)*(v_b.x -v_a.x) ;
  float y = (v_b.y -v_a.y)*(v_b.y -v_a.y) ;
  float z = (v_b.z -v_a.z)*(v_b.z -v_a.z) ;
  return sqrt(x+y+z) ;
}
// mag Vec4
float mag(Vec4 v_a) {
  float x = v_a.x*v_a.x ;
  float y = v_a.y *v_a.y ;
  float z = v_a.z *v_a.z ;
  float w = v_a.w *v_a.w ;
  return sqrt(x+y+z+w) ;
}

float mag(Vec4 v_a, Vec4 v_b) {
  // same result than dist
  float x = (v_b.x -v_a.x)*(v_b.x -v_a.x) ;
  float y = (v_b.y -v_a.y)*(v_b.y -v_a.y) ;
  float z = (v_b.z -v_a.z)*(v_b.z -v_a.z) ;
  float w = (v_b.w -v_a.w)*(v_b.w -v_a.w) ;
  return sqrt(x+y+z+w) ;
}



// Distance
/*
return float
return the distance beatwen two vectors
*/
float dist(Vec2 v_a, Vec2 v_b) {
    float dx = v_a.x - v_b.x;
    float dy = v_a.y - v_b.y;
    return (float) Math.sqrt(dx*dx + dy*dy);
}
float dist(Vec3 v_a, Vec3 v_b) {
    float dx = v_a.x - v_b.x;
    float dy = v_a.y - v_b.y;
    float dz = v_a.z - v_b.z;
    return (float) Math.sqrt(dx*dx + dy*dy + dz*dz);
}
float dist(Vec4 v_a, Vec4 v_b) {
    float dx = v_a.x - v_b.x;
    float dy = v_a.y - v_b.y;
    float dz = v_a.z - v_b.z;
    float dw = v_a.w - v_b.w;
    return (float) Math.sqrt(dx*dx + dy*dy + dz*dz + dw*dw);
}


// Middle
////////
/*
@ return Vec2, Vec3 or Vec4
return the middle between two Vector
*/
Vec2 middle(Vec2 p1, Vec2 p2)  {
  Vec2 middle ;
  middle = add(p1, p2);
  middle.div(2) ;
  return middle ;
}

Vec2 middle(Vec2 [] list)  {
  Vec2 middle = Vec2() ;
  for (int i = 0 ; i < list.length ; i++) {
    middle.add(list[i]);
  }
  middle.div(list.length) ;
  return middle ;
}

Vec3 middle(Vec3 p1, Vec3 p2)  {
  Vec3 middle ;
  middle = add(p1, p2);
  middle.div(2) ;
  return middle ;
}

Vec3 middle(Vec3 [] list)  {
  Vec3 middle = Vec3() ;
  for (int i = 0 ; i < list.length ; i++) {
    middle.add(list[i]);
  }
  middle.div(list.length) ;
  return middle ;
}

Vec4 middle(Vec4 p1, Vec4 p2)  {
  Vec4 middle ;
  middle = add(p1, p2);
  middle.div(2) ;
  return middle ;
}

Vec4 middle(Vec4 [] list)  {
  Vec4 middle = Vec4() ;
  for (int i = 0 ; i < list.length ; i++) {
    middle.add(list[i]);
  }
  middle.div(list.length) ;
  return middle ;
}






// Copy 
/*
@ return Vec3
Transform PVector in Vec
*/
Vec3 copyPVectorToVec(PVector p) {
  return new Vec3(p.x,p.y,p.z) ;
}



// JITTER
/////////
// Vec2
Vec2 jitterVec2(int range) {
  Vec2 jitter = Vec2() ;
  jitter.x = random(-range, range) ;
  jitter.y = random(-range, range) ;
  return jitter ;
}
Vec2 jitterVec2(int range_x, int range_y) {
  Vec2 jitter = Vec2() ;
  jitter.x = random(-range_x, range_x) ;
  jitter.y = random(-range_y, range_y) ;
  return jitter ;
}
// Vec3
Vec3 jitterVec3(int range) {
  Vec3 jitter = Vec3() ;
  jitter.x = random(-range, range) ;
  jitter.y = random(-range, range) ;
  jitter.z = random(-range, range) ;
  return jitter ;
}
Vec3 jitterVec3(int range_x, int range_y, int range_z) {
  Vec3 jitter = Vec3() ;
  jitter.x = random(-range_x, range_x) ;
  jitter.y = random(-range_y, range_y) ;
  jitter.z = random(-range_z, range_z) ;
  return jitter ;
}
// Vec4
Vec4 jitterVec4(int range) {
  Vec4 jitter = Vec4() ;
  jitter.x = random(-range, range) ;
  jitter.y = random(-range, range) ;
  jitter.z = random(-range, range) ;
  return jitter ;
}
Vec4 jitterVec4(int range_x, int range_y, int range_z, int range_w) {
  Vec4 jitter = Vec4() ;
  jitter.x = random(-range_x, range_x) ;
  jitter.y = random(-range_y, range_y) ;
  jitter.z = random(-range_z, range_z) ;
  jitter.w = random(-range_w, range_w) ;
  return jitter ;
}
// END JITTER
/////////////


// NORMALIZE DIRECTION
// VEC 2 from angle
///////////////////
Vec2 norm_rad(float angle) {
  float x = (float)Math.cos(angle) ;
  float y = (float)Math.sin(angle) ;
  return Vec2(x,y) ;
}

Vec2 norm_deg(float angle) {
  angle = radians(angle) ;
  float x = (float)Math.cos(angle) ;
  float y = (float)Math.sin(angle) ;
  return Vec2(x,y) ;
}


// normalize direction

Vec2 norm_dir(String type, float direction) {
  float x, y = 0 ;
  if(type.equals("DEG")) {
    float angle = TWO_PI/360.;
    direction = 360-direction;
    direction += 180;
    x = sin(angle *direction) ;
    y = cos(angle *direction);
  } else if (type.equals("RAD")) {
    x = sin(direction) ;
    y = cos(direction);
  } else {
    println("the type must be 'RAD' for radians or 'DEG' for degrees") ;
    x = 0 ;
    y = 0 ;
  }
  return new Vec2(x,y) ;
}
// END VEC FROM ANGLE
/////////////////////




/**
Return a new Vec
*/

// Vec 6
////////
Vec6 Vec6(float a, float b, float c, float d, float e, float f) {
  return new Vec6(a,b,c,d,e,f) ;
}

Vec6 Vec6(float v) {
  return new Vec6(v) ;
}

Vec6 Vec6() {
  return new Vec6(0.) ;
}

// Vec 5
////////
Vec5 Vec5(float a, float b, float c, float d, float e) {
  return new Vec5(a,b,c,d,e) ;
}

Vec5 Vec5(float v) {
  return new Vec5(v) ;
}

Vec5 Vec5() {
  return new Vec5(0.) ;
}

// Vec 4
////////
Vec4 Vec4(float x, float y, float z, float w) {
  return new Vec4(x,y,z,w) ;
}

Vec4 Vec4(float v) {
  return new Vec4(v) ;
}

Vec4 Vec4() {
  return new Vec4(0.) ;
}

// Vec 3
////////
Vec3 Vec3(float x, float y, float z) {
  return new Vec3(x,y,z) ;
}

Vec3 Vec3(float v) {
  return new Vec3(v) ;
}

Vec3 Vec3(PVector p) {
  return new Vec3(p.x, p.y, p.z) ;
}

Vec3 Vec3() {
  return new Vec3(0.) ;
}

// Vec 2
////////
Vec2 Vec2(float x, float y) { 
  return new Vec2(x,y) ;
}

Vec2 Vec2(float v) {
  return new Vec2(v) ;
}

Vec2 Vec2(PVector p) {
  return new Vec2(p.x, p.y) ;
}

Vec2 Vec2() {
  return new Vec2(0.) ;
}
// END CLASS VEC
///////////////


/**
// PROCESSING METHOD in VEC mode
*/

// display
void point(Vec2 p) {
  point(p.x, p.y) ;
}
void point(Vec3 p) {
  point(p.x, p.y, p.z) ;
}
void line(Vec2 a, Vec2 b){
  line(a.x, a.y, b.x,b.y) ;
}
void line(Vec3 a, Vec3 b){
  line(a.x, a.y, a.z, b.x,b.y, b.z) ;
}
void vertex(Vec2 a){
  vertex(a.x, a.y) ;
}
void vertex(Vec3 a){
  vertex(a.x, a.y, a.z) ;
}



// color
void fill(Vec3 c) {
  fill(c.r,c.g,c.b) ;
}
void fill(Vec4 c) {
  if( c.a > 0) fill(c.r,c.g,c.b,c.a) ; else noFill() ;
}

void stroke(Vec3 c) {
  stroke(c.r,c.g,c.b) ;
}
void stroke(Vec4 c) {
  if(c.a > 0) stroke(c.r,c.g,c.b,c.a) ; else noStroke() ;
}



// TRANSLATE and ROTATE Matrix method

// position
void translate(Vec3 t){
  translate(t.x, t.y, t.z) ;
}
void translate(Vec2 t){
  translate(t.x, t.y) ;
}

void rotateXY(Vec2 rot) {
  rotateX(rot.x) ;
  rotateY(rot.y) ;
}

void rotateXZ(Vec2 rot) {
  rotateX(rot.x) ;
  rotateZ(rot.y) ;
}

void rotateYZ(Vec2 rot) {
  rotateY(rot.x) ;
  rotateZ(rot.y) ;
}
void rotateXYZ(Vec3 rot) {
  rotateX(rot.x) ;
  rotateY(rot.y) ;
  rotateZ(rot.z) ;
}


void matrix_3D_start(Vec3 pos, Vec3 dir_cart) {
  Vec3 dir = dir_cart.copy() ;
  pushMatrix() ;
  translate(pos) ;
  float radius = sqrt(dir.x * dir.x + dir.y * dir.y + dir.z * dir.z);
  float longitude = acos(dir.x / sqrt(dir.x * dir.x + dir.y * dir.y)) * (dir.y < 0 ? -1 : 1);
  float latitude = acos(dir.z / radius) * (dir.z < 0 ? -1 : 1);
  // check NaN result
  if (Float.isNaN(longitude)) longitude = 0 ;
  if (Float.isNaN(latitude)) latitude = 0 ;
  if (Float.isNaN(radius)) radius = 0 ;
  rotateX(latitude) ;
  rotateY(longitude) ;
}

void matrix_3D_start(Vec3 pos, Vec2 dir_polar) {
  pushMatrix() ;
  translate(pos) ;
  rotateXY(dir_polar) ;
}

void matrix_2D_start(Vec2 pos, float orientation) {
  pushMatrix() ;
  translate(pos) ;
  rotate(orientation) ;
}

void matrix_end() {
  popMatrix() ;
}

void matrix_start() {
  pushMatrix() ;
}


