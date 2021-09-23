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
discard "forward decl of Geom2d_Curve"
type
  GeomTools_Curve2dSet* {.importcpp: "GeomTools_Curve2dSet",
                         header: "GeomTools_Curve2dSet.hxx", bycopy.} = object ## !
                                                                          ## Returns an empty set of
                                                                          ## Curves.


proc constructGeomTools_Curve2dSet*(): GeomTools_Curve2dSet {.constructor,
    importcpp: "GeomTools_Curve2dSet(@)", header: "GeomTools_Curve2dSet.hxx".}
proc Clear*(this: var GeomTools_Curve2dSet) {.importcpp: "Clear",
    header: "GeomTools_Curve2dSet.hxx".}
proc Add*(this: var GeomTools_Curve2dSet; C: handle[Geom2d_Curve]): Standard_Integer {.
    importcpp: "Add", header: "GeomTools_Curve2dSet.hxx".}
proc Curve2d*(this: GeomTools_Curve2dSet; I: Standard_Integer): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "Curve2d", header: "GeomTools_Curve2dSet.hxx".}
proc Index*(this: GeomTools_Curve2dSet; C: handle[Geom2d_Curve]): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "GeomTools_Curve2dSet.hxx".}
proc Dump*(this: GeomTools_Curve2dSet; OS: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "GeomTools_Curve2dSet.hxx".}
proc Write*(this: GeomTools_Curve2dSet; OS: var Standard_OStream;
           theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, importcpp: "Write", header: "GeomTools_Curve2dSet.hxx".}
proc Read*(this: var GeomTools_Curve2dSet; IS: var Standard_IStream;
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "GeomTools_Curve2dSet.hxx".}
proc PrintCurve2d*(C: handle[Geom2d_Curve]; OS: var Standard_OStream;
                  compact: Standard_Boolean = Standard_False) {.
    importcpp: "GeomTools_Curve2dSet::PrintCurve2d(@)",
    header: "GeomTools_Curve2dSet.hxx".}
proc ReadCurve2d*(IS: var Standard_IStream): handle[Geom2d_Curve] {.
    importcpp: "GeomTools_Curve2dSet::ReadCurve2d(@)",
    header: "GeomTools_Curve2dSet.hxx".}