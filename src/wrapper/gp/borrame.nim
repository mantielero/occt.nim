import gp


proc Pnt*(x,y,z:float):gp_Pnt =
  constructor_gp_Pnt(x.cdouble, y.cdouble, z.cdouble)

discard Pnt(1.0,1.0,1.0)