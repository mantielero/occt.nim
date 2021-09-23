##  Created on: 1995-02-07
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../TColStd/TColStd_SequenceOfReal, ../Standard/Standard_Integer,
  ../Standard/Standard_Real

discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of GeomAdaptor_HSurface"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntPatch_Line"
type
  GeomInt_LineConstructor* {.importcpp: "GeomInt_LineConstructor",
                            header: "GeomInt_LineConstructor.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor


proc constructGeomInt_LineConstructor*(): GeomInt_LineConstructor {.constructor,
    importcpp: "GeomInt_LineConstructor(@)", header: "GeomInt_LineConstructor.hxx".}
proc Load*(this: var GeomInt_LineConstructor; D1: handle[Adaptor3d_TopolTool];
          D2: handle[Adaptor3d_TopolTool]; S1: handle[GeomAdaptor_HSurface];
          S2: handle[GeomAdaptor_HSurface]) {.importcpp: "Load",
    header: "GeomInt_LineConstructor.hxx".}
proc Perform*(this: var GeomInt_LineConstructor; L: handle[IntPatch_Line]) {.
    importcpp: "Perform", header: "GeomInt_LineConstructor.hxx".}
proc IsDone*(this: GeomInt_LineConstructor): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomInt_LineConstructor.hxx".}
proc NbParts*(this: GeomInt_LineConstructor): Standard_Integer {.noSideEffect,
    importcpp: "NbParts", header: "GeomInt_LineConstructor.hxx".}
proc Part*(this: GeomInt_LineConstructor; I: Standard_Integer;
          WFirst: var Standard_Real; WLast: var Standard_Real) {.noSideEffect,
    importcpp: "Part", header: "GeomInt_LineConstructor.hxx".}