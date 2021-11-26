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

discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of GeomAdaptor_HSurface"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntPatch_Line"
type
  GeomIntLineConstructor* {.importcpp: "GeomInt_LineConstructor",
                           header: "GeomInt_LineConstructor.hxx", bycopy.} = object


proc `new`*(this: var GeomIntLineConstructor; theSize: csize_t): pointer {.
    importcpp: "GeomInt_LineConstructor::operator new",
    header: "GeomInt_LineConstructor.hxx".}
proc `delete`*(this: var GeomIntLineConstructor; theAddress: pointer) {.
    importcpp: "GeomInt_LineConstructor::operator delete",
    header: "GeomInt_LineConstructor.hxx".}
proc `new[]`*(this: var GeomIntLineConstructor; theSize: csize_t): pointer {.
    importcpp: "GeomInt_LineConstructor::operator new[]",
    header: "GeomInt_LineConstructor.hxx".}
proc `delete[]`*(this: var GeomIntLineConstructor; theAddress: pointer) {.
    importcpp: "GeomInt_LineConstructor::operator delete[]",
    header: "GeomInt_LineConstructor.hxx".}
proc `new`*(this: var GeomIntLineConstructor; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomInt_LineConstructor::operator new",
    header: "GeomInt_LineConstructor.hxx".}
proc `delete`*(this: var GeomIntLineConstructor; a2: pointer; a3: pointer) {.
    importcpp: "GeomInt_LineConstructor::operator delete",
    header: "GeomInt_LineConstructor.hxx".}
proc constructGeomIntLineConstructor*(): GeomIntLineConstructor {.constructor,
    importcpp: "GeomInt_LineConstructor(@)", header: "GeomInt_LineConstructor.hxx".}
proc load*(this: var GeomIntLineConstructor; d1: Handle[Adaptor3dTopolTool];
          d2: Handle[Adaptor3dTopolTool]; s1: Handle[GeomAdaptorHSurface];
          s2: Handle[GeomAdaptorHSurface]) {.importcpp: "Load",
    header: "GeomInt_LineConstructor.hxx".}
proc perform*(this: var GeomIntLineConstructor; L: Handle[IntPatchLine]) {.
    importcpp: "Perform", header: "GeomInt_LineConstructor.hxx".}
proc isDone*(this: GeomIntLineConstructor): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomInt_LineConstructor.hxx".}
proc nbParts*(this: GeomIntLineConstructor): int {.noSideEffect,
    importcpp: "NbParts", header: "GeomInt_LineConstructor.hxx".}
proc part*(this: GeomIntLineConstructor; i: int; wFirst: var StandardReal;
          wLast: var StandardReal) {.noSideEffect, importcpp: "Part",
                                  header: "GeomInt_LineConstructor.hxx".}