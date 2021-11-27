##  Created on: 1992-11-05
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of TopoDS_Face"
type
  BRepPrimSphere* {.importcpp: "BRepPrim_Sphere", header: "BRepPrim_Sphere.hxx",
                   bycopy.} = object of BRepPrimRevolution ## ! Creates a Sphere at  origin with  Radius. The axes
                                                      ## ! of the sphere are the  reference axes. An error is
                                                      ## ! raised if the radius is < Resolution.


proc newBRepPrimSphere*(radius: cfloat): BRepPrimSphere {.cdecl, constructor,
    importcpp: "BRepPrim_Sphere(@)", header: "BRepPrim_Sphere.hxx".}
proc newBRepPrimSphere*(center: Pnt; radius: cfloat): BRepPrimSphere {.cdecl,
    constructor, importcpp: "BRepPrim_Sphere(@)", header: "BRepPrim_Sphere.hxx".}
proc newBRepPrimSphere*(axes: Ax2; radius: cfloat): BRepPrimSphere {.cdecl,
    constructor, importcpp: "BRepPrim_Sphere(@)", header: "BRepPrim_Sphere.hxx".}
proc makeEmptyLateralFace*(this: BRepPrimSphere): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "MakeEmptyLateralFace", header: "BRepPrim_Sphere.hxx".}