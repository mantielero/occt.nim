##  Created on: 1993-07-19
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TColStd/TColStd_IndexedMapOfTransient,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream,
  ../Standard/Standard_IStream, ../Standard/Standard_Boolean,
  ../Message/Message_ProgressRange

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_Curve"
type
  GeomTools_CurveSet* {.importcpp: "GeomTools_CurveSet",
                       header: "GeomTools_CurveSet.hxx", bycopy.} = object ## ! Returns an empty set of Curves.


proc constructGeomTools_CurveSet*(): GeomTools_CurveSet {.constructor,
    importcpp: "GeomTools_CurveSet(@)", header: "GeomTools_CurveSet.hxx".}
proc Clear*(this: var GeomTools_CurveSet) {.importcpp: "Clear",
                                        header: "GeomTools_CurveSet.hxx".}
proc Add*(this: var GeomTools_CurveSet; C: handle[Geom_Curve]): Standard_Integer {.
    importcpp: "Add", header: "GeomTools_CurveSet.hxx".}
proc Curve*(this: GeomTools_CurveSet; I: Standard_Integer): handle[Geom_Curve] {.
    noSideEffect, importcpp: "Curve", header: "GeomTools_CurveSet.hxx".}
proc Index*(this: GeomTools_CurveSet; C: handle[Geom_Curve]): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "GeomTools_CurveSet.hxx".}
proc Dump*(this: GeomTools_CurveSet; OS: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "GeomTools_CurveSet.hxx".}
proc Write*(this: GeomTools_CurveSet; OS: var Standard_OStream;
           theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, importcpp: "Write", header: "GeomTools_CurveSet.hxx".}
proc Read*(this: var GeomTools_CurveSet; IS: var Standard_IStream;
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "GeomTools_CurveSet.hxx".}
proc PrintCurve*(C: handle[Geom_Curve]; OS: var Standard_OStream;
                compact: Standard_Boolean = Standard_False) {.
    importcpp: "GeomTools_CurveSet::PrintCurve(@)",
    header: "GeomTools_CurveSet.hxx".}
proc ReadCurve*(IS: var Standard_IStream): handle[Geom_Curve] {.
    importcpp: "GeomTools_CurveSet::ReadCurve(@)",
    header: "GeomTools_CurveSet.hxx".}