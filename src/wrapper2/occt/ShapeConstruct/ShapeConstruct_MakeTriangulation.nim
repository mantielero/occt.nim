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

discard "forward decl of TopoDS_Wire"
type
  ShapeConstructMakeTriangulation* {.importcpp: "ShapeConstruct_MakeTriangulation", header: "ShapeConstruct_MakeTriangulation.hxx",
                                    bycopy.} = object of BRepBuilderAPI_MakeShape


proc constructShapeConstructMakeTriangulation*(pnts: TColgpArray1OfPnt;
    prec: StandardReal = 0.0): ShapeConstructMakeTriangulation {.constructor,
    importcpp: "ShapeConstruct_MakeTriangulation(@)",
    header: "ShapeConstruct_MakeTriangulation.hxx".}
proc constructShapeConstructMakeTriangulation*(wire: TopoDS_Wire;
    prec: StandardReal = 0.0): ShapeConstructMakeTriangulation {.constructor,
    importcpp: "ShapeConstruct_MakeTriangulation(@)",
    header: "ShapeConstruct_MakeTriangulation.hxx".}
proc build*(this: var ShapeConstructMakeTriangulation) {.importcpp: "Build",
    header: "ShapeConstruct_MakeTriangulation.hxx".}
proc isDone*(this: ShapeConstructMakeTriangulation): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "ShapeConstruct_MakeTriangulation.hxx".}

