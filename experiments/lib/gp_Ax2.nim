import cinterop, gp_Pnt, gp_Dir

csource "gp_Ax2.hxx":
  type 
    gp_Ax2* = object of CClass
    
type
  Ax2* = gp_Ax2

proc newAx2*():Ax2 =
  Ax2.init()

proc newAx2*(x:Pnt,y:Dir):Ax2 = 
  Ax2.init(x, y)