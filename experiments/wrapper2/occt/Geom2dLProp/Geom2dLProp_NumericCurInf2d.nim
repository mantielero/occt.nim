##  Created on: 1994-09-02
##  Created by: Yves FRICAUD
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of Geom2d_Curve"
discard "forward decl of LProp_CurAndInf"
type
  Geom2dLProp_NumericCurInf2d* {.importcpp: "Geom2dLProp_NumericCurInf2d",
                                header: "Geom2dLProp_NumericCurInf2d.hxx", bycopy.} = object


proc constructGeom2dLProp_NumericCurInf2d*(): Geom2dLProp_NumericCurInf2d {.
    constructor, importcpp: "Geom2dLProp_NumericCurInf2d(@)",
    header: "Geom2dLProp_NumericCurInf2d.hxx".}
proc PerformCurExt*(this: var Geom2dLProp_NumericCurInf2d; C: handle[Geom2d_Curve];
                   Result: var LProp_CurAndInf) {.importcpp: "PerformCurExt",
    header: "Geom2dLProp_NumericCurInf2d.hxx".}
proc PerformInf*(this: var Geom2dLProp_NumericCurInf2d; C: handle[Geom2d_Curve];
                Result: var LProp_CurAndInf) {.importcpp: "PerformInf",
    header: "Geom2dLProp_NumericCurInf2d.hxx".}
proc PerformCurExt*(this: var Geom2dLProp_NumericCurInf2d; C: handle[Geom2d_Curve];
                   UMin: Standard_Real; UMax: Standard_Real;
                   Result: var LProp_CurAndInf) {.importcpp: "PerformCurExt",
    header: "Geom2dLProp_NumericCurInf2d.hxx".}
proc PerformInf*(this: var Geom2dLProp_NumericCurInf2d; C: handle[Geom2d_Curve];
                UMin: Standard_Real; UMax: Standard_Real;
                Result: var LProp_CurAndInf) {.importcpp: "PerformInf",
    header: "Geom2dLProp_NumericCurInf2d.hxx".}
proc IsDone*(this: Geom2dLProp_NumericCurInf2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dLProp_NumericCurInf2d.hxx".}