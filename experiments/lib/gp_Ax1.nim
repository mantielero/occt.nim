import cinterop, gp_Pnt, gp_Dir

csource "gp_Ax1.hxx":
  type 
    gp_Ax1* = object of CClass
    
type
  Ax1* = gp_Ax1

proc newAx1*():Ax1 =
  Ax1.init()

proc newAx1*(x:Pnt,y:Dir):Ax1 = 
  Ax1.init(x, y)