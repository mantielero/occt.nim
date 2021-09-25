import cinterop

csource "gp_Vec.hxx":
  type 
    gp_Vec* = object of CClass
    
type
  Vec* = gp_Vec


proc newVec*():Vec =
  Vec.init()

proc newVec*[A,B,C:SomeNumber](x:A,y:B,z:C):Vec = 
  Vec.init(x.cdouble, y.cdouble, z.cdouble)

