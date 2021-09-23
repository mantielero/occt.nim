##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2017 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream, Bnd_Box,
  ../gp/gp_Ax3, ../gp/gp_Dir, ../gp/gp_Pnt, ../gp/gp_XYZ,
  ../TColgp/TColgp_Array1OfPnt, ../TColStd/TColStd_Array1OfReal

## ! The class describes the Oriented Bounding Box (OBB),
## ! much tighter enclosing volume for the shape than the
## ! Axis Aligned Bounding Box (AABB).
## ! The OBB is defined by a center of the box, the axes and the halves
## ! of its three dimensions.
## ! The OBB can be used more effectively than AABB as a rejection mechanism
## ! for non-interfering objects.

type
  Bnd_OBB* {.importcpp: "Bnd_OBB", header: "Bnd_OBB.hxx", bycopy.} = object ## ! Empty constructor
                                                                    ## ! Center of the OBB
    ## ! Directions of the box's axes
    ## ! (all vectors are already normalized)
    ## ! Half-size dimensions of the OBB
    ## ! To be set if the OBB is axis aligned box;


proc constructBnd_OBB*(): Bnd_OBB {.constructor, importcpp: "Bnd_OBB(@)",
                                 header: "Bnd_OBB.hxx".}
proc constructBnd_OBB*(theCenter: gp_Pnt; theXDirection: gp_Dir;
                      theYDirection: gp_Dir; theZDirection: gp_Dir;
                      theHXSize: Standard_Real; theHYSize: Standard_Real;
                      theHZSize: Standard_Real): Bnd_OBB {.constructor,
    importcpp: "Bnd_OBB(@)", header: "Bnd_OBB.hxx".}
proc constructBnd_OBB*(theBox: Bnd_Box): Bnd_OBB {.constructor,
    importcpp: "Bnd_OBB(@)", header: "Bnd_OBB.hxx".}
proc ReBuild*(this: var Bnd_OBB; theListOfPoints: TColgp_Array1OfPnt;
             theListOfTolerances: ptr TColStd_Array1OfReal = 0;
             theIsOptimal: Standard_Boolean = Standard_False) {.
    importcpp: "ReBuild", header: "Bnd_OBB.hxx".}
proc SetCenter*(this: var Bnd_OBB; theCenter: gp_Pnt) {.importcpp: "SetCenter",
    header: "Bnd_OBB.hxx".}
proc SetXComponent*(this: var Bnd_OBB; theXDirection: gp_Dir; theHXSize: Standard_Real) {.
    importcpp: "SetXComponent", header: "Bnd_OBB.hxx".}
proc SetYComponent*(this: var Bnd_OBB; theYDirection: gp_Dir; theHYSize: Standard_Real) {.
    importcpp: "SetYComponent", header: "Bnd_OBB.hxx".}
proc SetZComponent*(this: var Bnd_OBB; theZDirection: gp_Dir; theHZSize: Standard_Real) {.
    importcpp: "SetZComponent", header: "Bnd_OBB.hxx".}
proc Position*(this: Bnd_OBB): gp_Ax3 {.noSideEffect, importcpp: "Position",
                                    header: "Bnd_OBB.hxx".}
proc Center*(this: Bnd_OBB): gp_XYZ {.noSideEffect, importcpp: "Center",
                                  header: "Bnd_OBB.hxx".}
proc XDirection*(this: Bnd_OBB): gp_XYZ {.noSideEffect, importcpp: "XDirection",
                                      header: "Bnd_OBB.hxx".}
proc YDirection*(this: Bnd_OBB): gp_XYZ {.noSideEffect, importcpp: "YDirection",
                                      header: "Bnd_OBB.hxx".}
proc ZDirection*(this: Bnd_OBB): gp_XYZ {.noSideEffect, importcpp: "ZDirection",
                                      header: "Bnd_OBB.hxx".}
proc XHSize*(this: Bnd_OBB): Standard_Real {.noSideEffect, importcpp: "XHSize",
    header: "Bnd_OBB.hxx".}
proc YHSize*(this: Bnd_OBB): Standard_Real {.noSideEffect, importcpp: "YHSize",
    header: "Bnd_OBB.hxx".}
proc ZHSize*(this: Bnd_OBB): Standard_Real {.noSideEffect, importcpp: "ZHSize",
    header: "Bnd_OBB.hxx".}
proc IsVoid*(this: Bnd_OBB): Standard_Boolean {.noSideEffect, importcpp: "IsVoid",
    header: "Bnd_OBB.hxx".}
proc SetVoid*(this: var Bnd_OBB) {.importcpp: "SetVoid", header: "Bnd_OBB.hxx".}
proc SetAABox*(this: var Bnd_OBB; theFlag: Standard_Boolean) {.importcpp: "SetAABox",
    header: "Bnd_OBB.hxx".}
proc IsAABox*(this: Bnd_OBB): Standard_Boolean {.noSideEffect, importcpp: "IsAABox",
    header: "Bnd_OBB.hxx".}
proc Enlarge*(this: var Bnd_OBB; theGapAdd: Standard_Real) {.importcpp: "Enlarge",
    header: "Bnd_OBB.hxx".}
proc GetVertex*(this: Bnd_OBB; theP: array[8, gp_Pnt]): Standard_Boolean {.
    noSideEffect, importcpp: "GetVertex", header: "Bnd_OBB.hxx".}
proc SquareExtent*(this: Bnd_OBB): Standard_Real {.noSideEffect,
    importcpp: "SquareExtent", header: "Bnd_OBB.hxx".}
proc IsOut*(this: Bnd_OBB; theOther: Bnd_OBB): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_OBB.hxx".}
proc IsOut*(this: Bnd_OBB; theP: gp_Pnt): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_OBB.hxx".}
proc IsCompletelyInside*(this: Bnd_OBB; theOther: Bnd_OBB): Standard_Boolean {.
    noSideEffect, importcpp: "IsCompletelyInside", header: "Bnd_OBB.hxx".}
proc Add*(this: var Bnd_OBB; theOther: Bnd_OBB) {.importcpp: "Add",
    header: "Bnd_OBB.hxx".}
proc Add*(this: var Bnd_OBB; theP: gp_Pnt) {.importcpp: "Add", header: "Bnd_OBB.hxx".}
proc DumpJson*(this: Bnd_OBB; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Bnd_OBB.hxx".}