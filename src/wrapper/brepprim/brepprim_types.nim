import ../brep/brep_types
type
  BRepSweepPrism* = object # FIXME
   
  BRepSweepRevol* = object # FIXME
    
  BRepPrimDirection* {.size: sizeof(cint), importcpp: "BRepPrim_Direction",
                      header: "BRepPrim_Direction.hxx".} = enum
    BRepPrimXMin, BRepPrimXMax, BRepPrimYMin, BRepPrimYMax, BRepPrimZMin,
    BRepPrimZMax

  BRepPrimBuilder* {.importcpp: "BRepPrim_Builder", header: "BRepPrim_Builder.hxx",
                    bycopy.} = object 

  BRepPrimFaceBuilder* {.importcpp: "BRepPrim_FaceBuilder",
                        header: "BRepPrim_FaceBuilder.hxx", bycopy.} = object

  BRepPrimGWedge* {.importcpp: "BRepPrim_GWedge", header: "BRepPrim_GWedge.hxx",
                   bycopy.} = object of RootObj 

  BRepPrimOneAxis* {.importcpp: "BRepPrim_OneAxis", header: "BRepPrim_OneAxis.hxx",
                    bycopy.} = object of RootObj 

  BRepPrimRevolution* {.importcpp: "BRepPrim_Revolution",
                       header: "BRepPrim_Revolution.hxx", bycopy.} = object of BRepPrimOneAxis 

  BRepPrimWedge* {.importcpp: "BRepPrim_Wedge", header: "BRepPrim_Wedge.hxx", bycopy.} = object of BRepPrimGWedge 

  BRepPrimCone* {.importcpp: "BRepPrim_Cone", header: "BRepPrim_Cone.hxx", bycopy.} = object of BRepPrimRevolution 

  BRepPrimCylinder* {.importcpp: "BRepPrim_Cylinder",
                     header: "BRepPrim_Cylinder.hxx", bycopy.} = object of BRepPrimRevolution 

  BRepPrimSphere* {.importcpp: "BRepPrim_Sphere", header: "BRepPrim_Sphere.hxx",
                   bycopy.} = object of BRepPrimRevolution 
                   #bycopy.} = object of BRepPrimRevolution 

                   #bycopy.} = object of BRepPrimRevolution 
  BRepPrimTorus* {.importcpp: "BRepPrim_Torus", header: "BRepPrim_Torus.hxx", bycopy.} = object of BRepPrimRevolution 

