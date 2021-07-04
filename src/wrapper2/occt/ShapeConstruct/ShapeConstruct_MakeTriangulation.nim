##  Created on: 1999-12-20
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../TopoDS/TopoDS_Wire,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape, ../TColgp/TColgp_Array1OfPnt,
  ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Wire"
type
  ShapeConstruct_MakeTriangulation* {.importcpp: "ShapeConstruct_MakeTriangulation", header: "ShapeConstruct_MakeTriangulation.hxx",
                                     bycopy.} = object of BRepBuilderAPI_MakeShape


proc constructShapeConstruct_MakeTriangulation*(pnts: TColgp_Array1OfPnt;
    prec: Standard_Real = 0.0): ShapeConstruct_MakeTriangulation {.constructor,
    importcpp: "ShapeConstruct_MakeTriangulation(@)",
    header: "ShapeConstruct_MakeTriangulation.hxx".}
proc constructShapeConstruct_MakeTriangulation*(wire: TopoDS_Wire;
    prec: Standard_Real = 0.0): ShapeConstruct_MakeTriangulation {.constructor,
    importcpp: "ShapeConstruct_MakeTriangulation(@)",
    header: "ShapeConstruct_MakeTriangulation.hxx".}
proc Build*(this: var ShapeConstruct_MakeTriangulation) {.importcpp: "Build",
    header: "ShapeConstruct_MakeTriangulation.hxx".}
proc IsDone*(this: ShapeConstruct_MakeTriangulation): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "ShapeConstruct_MakeTriangulation.hxx".}