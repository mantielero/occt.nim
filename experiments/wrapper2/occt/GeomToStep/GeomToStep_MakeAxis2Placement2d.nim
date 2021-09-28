##  Created on: 1994-08-26
##  Created by: Frederic MAUPAS
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of StepGeom_Axis2Placement2d"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax22d"
type
  GeomToStepMakeAxis2Placement2d* {.importcpp: "GeomToStep_MakeAxis2Placement2d", header: "GeomToStep_MakeAxis2Placement2d.hxx",
                                   bycopy.} = object of GeomToStepRoot


proc `new`*(this: var GeomToStepMakeAxis2Placement2d; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeAxis2Placement2d::operator new",
    header: "GeomToStep_MakeAxis2Placement2d.hxx".}
proc `delete`*(this: var GeomToStepMakeAxis2Placement2d; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeAxis2Placement2d::operator delete",
    header: "GeomToStep_MakeAxis2Placement2d.hxx".}
proc `new[]`*(this: var GeomToStepMakeAxis2Placement2d; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_MakeAxis2Placement2d::operator new[]",
    header: "GeomToStep_MakeAxis2Placement2d.hxx".}
proc `delete[]`*(this: var GeomToStepMakeAxis2Placement2d; theAddress: pointer) {.
    importcpp: "GeomToStep_MakeAxis2Placement2d::operator delete[]",
    header: "GeomToStep_MakeAxis2Placement2d.hxx".}
proc `new`*(this: var GeomToStepMakeAxis2Placement2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomToStep_MakeAxis2Placement2d::operator new",
    header: "GeomToStep_MakeAxis2Placement2d.hxx".}
proc `delete`*(this: var GeomToStepMakeAxis2Placement2d; a2: pointer; a3: pointer) {.
    importcpp: "GeomToStep_MakeAxis2Placement2d::operator delete",
    header: "GeomToStep_MakeAxis2Placement2d.hxx".}
proc constructGeomToStepMakeAxis2Placement2d*(a: Ax2): GeomToStepMakeAxis2Placement2d {.
    constructor, importcpp: "GeomToStep_MakeAxis2Placement2d(@)",
    header: "GeomToStep_MakeAxis2Placement2d.hxx".}
proc constructGeomToStepMakeAxis2Placement2d*(a: Ax22d): GeomToStepMakeAxis2Placement2d {.
    constructor, importcpp: "GeomToStep_MakeAxis2Placement2d(@)",
    header: "GeomToStep_MakeAxis2Placement2d.hxx".}
proc value*(this: GeomToStepMakeAxis2Placement2d): Handle[StepGeomAxis2Placement2d] {.
    noSideEffect, importcpp: "Value", header: "GeomToStep_MakeAxis2Placement2d.hxx".}