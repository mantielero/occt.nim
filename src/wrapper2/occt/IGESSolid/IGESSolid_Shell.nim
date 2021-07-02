##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESSolid_Face"
discard "forward decl of IGESSolid_Shell"
discard "forward decl of IGESSolid_Shell"
type
  HandleIGESSolidShell* = Handle[IGESSolidShell]

## ! defines Shell, Type <514> Form Number <1>
## ! in package IGESSolid
## ! Shell entity is a connected entity of dimensionality 2
## ! which divides R3 into two arcwise connected open subsets,
## ! one of which is finite. Inside of the shell is defined to
## ! be the finite region.
## ! From IGES-5.3, Form can be <1> for Closed or <2> for Open

type
  IGESSolidShell* {.importcpp: "IGESSolid_Shell", header: "IGESSolid_Shell.hxx",
                   bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidShell*(): IGESSolidShell {.constructor,
    importcpp: "IGESSolid_Shell(@)", header: "IGESSolid_Shell.hxx".}
proc init*(this: var IGESSolidShell; allFaces: Handle[IGESSolidHArray1OfFace];
          allOrient: Handle[TColStdHArray1OfInteger]) {.importcpp: "Init",
    header: "IGESSolid_Shell.hxx".}
proc isClosed*(this: IGESSolidShell): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "IGESSolid_Shell.hxx".}
proc setClosed*(this: var IGESSolidShell; closed: StandardBoolean) {.
    importcpp: "SetClosed", header: "IGESSolid_Shell.hxx".}
proc nbFaces*(this: IGESSolidShell): StandardInteger {.noSideEffect,
    importcpp: "NbFaces", header: "IGESSolid_Shell.hxx".}
proc face*(this: IGESSolidShell; index: StandardInteger): Handle[IGESSolidFace] {.
    noSideEffect, importcpp: "Face", header: "IGESSolid_Shell.hxx".}
proc orientation*(this: IGESSolidShell; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "Orientation", header: "IGESSolid_Shell.hxx".}
type
  IGESSolidShellbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_Shell::get_type_name(@)",
                            header: "IGESSolid_Shell.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_Shell::get_type_descriptor(@)",
    header: "IGESSolid_Shell.hxx".}
proc dynamicType*(this: IGESSolidShell): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Shell.hxx".}

