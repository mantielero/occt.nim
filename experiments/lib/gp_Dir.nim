import cinterop

csource "gp_Dir.hxx":
  type 
    gp_Dir* = object of CClass
    
type
  Dir* = gp_Dir

proc newDir*():Dir =
  Dir.init()

proc newDir*[A,B,C:SomeNumber](x:A,y:B,z:C):Dir = 
  Dir.init(x.cdouble, y.cdouble, z.cdouble)