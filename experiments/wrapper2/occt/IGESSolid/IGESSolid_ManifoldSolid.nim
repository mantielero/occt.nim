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

discard "forward decl of IGESSolid_Shell"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESSolid_ManifoldSolid"
discard "forward decl of IGESSolid_ManifoldSolid"
type
  HandleIGESSolidManifoldSolid* = Handle[IGESSolidManifoldSolid]

## ! defines ManifoldSolid, Type <186> Form Number <0>
## ! in package IGESSolid
## ! A manifold solid is a bounded, closed, and finite volume
## ! in three dimensional Euclidean space

type
  IGESSolidManifoldSolid* {.importcpp: "IGESSolid_ManifoldSolid",
                           header: "IGESSolid_ManifoldSolid.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidManifoldSolid*(): IGESSolidManifoldSolid {.constructor,
    importcpp: "IGESSolid_ManifoldSolid(@)", header: "IGESSolid_ManifoldSolid.hxx".}
proc init*(this: var IGESSolidManifoldSolid; aShell: Handle[IGESSolidShell];
          shellflag: bool; voidShells: Handle[IGESSolidHArray1OfShell];
          voidShellFlags: Handle[TColStdHArray1OfInteger]) {.importcpp: "Init",
    header: "IGESSolid_ManifoldSolid.hxx".}
proc shell*(this: IGESSolidManifoldSolid): Handle[IGESSolidShell] {.noSideEffect,
    importcpp: "Shell", header: "IGESSolid_ManifoldSolid.hxx".}
proc orientationFlag*(this: IGESSolidManifoldSolid): bool {.noSideEffect,
    importcpp: "OrientationFlag", header: "IGESSolid_ManifoldSolid.hxx".}
proc nbVoidShells*(this: IGESSolidManifoldSolid): int {.noSideEffect,
    importcpp: "NbVoidShells", header: "IGESSolid_ManifoldSolid.hxx".}
proc voidShell*(this: IGESSolidManifoldSolid; index: int): Handle[IGESSolidShell] {.
    noSideEffect, importcpp: "VoidShell", header: "IGESSolid_ManifoldSolid.hxx".}
proc voidOrientationFlag*(this: IGESSolidManifoldSolid; index: int): bool {.
    noSideEffect, importcpp: "VoidOrientationFlag",
    header: "IGESSolid_ManifoldSolid.hxx".}
type
  IGESSolidManifoldSolidbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_ManifoldSolid::get_type_name(@)",
                            header: "IGESSolid_ManifoldSolid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_ManifoldSolid::get_type_descriptor(@)",
    header: "IGESSolid_ManifoldSolid.hxx".}
proc dynamicType*(this: IGESSolidManifoldSolid): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_ManifoldSolid.hxx".}
