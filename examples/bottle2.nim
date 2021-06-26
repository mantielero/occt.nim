import nimline

cppincludes("/usr/include/opencascade")
#cppincludes("opencascade/gp.hxx")
cppincludes("opencascade/gp.hxx")
cpplibs("TKBO")
cpplibs("TKBO")
cpplibs("TKBO")
cpplibs("TKSTEP")
cpplibs("TKPrim")
cpplibs("TKSTEPAttr")
cpplibs("TKSTEP209")
cpplibs("TKSTEPBase")
cpplibs("TKXSBase")
cpplibs("TKShHealing")
cpplibs("TKTopAlgo")
cpplibs("TKGeomAlgo")
cpplibs("TKBRep")
cpplibs("TKGeomBase")
cpplibs("TKG3d")
cpplibs("TKG2d")
cpplibs("TKMath")
cpplibs("TKernel")

defineCppType(gp_Pnt, "gp_Pnt", "opencascade/gp_Pnt.hxx")
defineCppType(GC_MakeArcOfCircle, "GC_MakeArcOfCircle", "opencascade/GC_MakeArcOfCircle.hxx")
defineCppType(GC_MakeSegment, "GC_MakeSegment", "opencascade/GC_MakeSegment.hxx")

proc Pnt*[X,Y,Z:SomeNumber](x:X, y:Y, z:Z):gp_Pnt =
  return cppinit(gp_Pnt, x.float, y.float, z.float) 

proc x*(p:gp_Pnt):float =
  return p.X().to(float)

let
  myWidth = 50.0
  myThickness = 20.0

  aPnt1 = Pnt( -myWidth / 2.0, 0, 0)  #Pnt(-myWidth / 2.0, 0, 0)
  aPnt2 = Pnt(-myWidth / 2.0, -myThickness / 4.0, 0)
  aPnt3 = Pnt(0, -myThickness / 2.0, 0)
  aPnt4 = Pnt(myWidth / 2.0, -myThickness / 4.0, 0)
  aPnt5 = Pnt(myWidth / 2.0, 0, 0)  

#echo aPnt1.x
let aSegment1 = cppinit(GC_MakeSegment, aPnt1, aPnt2)

#let
  #aArcOfCircle = cppinit(GC_MakeArcOfCircle, aPnt2, aPnt3, aPnt4)
#  aSegment1 = cppinit(GC_MakeSegment, aPnt1, aPnt2)