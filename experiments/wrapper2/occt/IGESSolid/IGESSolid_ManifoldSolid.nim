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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  IGESSolid_HArray1OfShell, ../TColStd/TColStd_HArray1OfInteger,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer

discard "forward decl of IGESSolid_Shell"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESSolid_ManifoldSolid"
discard "forward decl of IGESSolid_ManifoldSolid"
type
  Handle_IGESSolid_ManifoldSolid* = handle[IGESSolid_ManifoldSolid]

## ! defines ManifoldSolid, Type <186> Form Number <0>
## ! in package IGESSolid
## ! A manifold solid is a bounded, closed, and finite volume
## ! in three dimensional Euclidean space

type
  IGESSolid_ManifoldSolid* {.importcpp: "IGESSolid_ManifoldSolid",
                            header: "IGESSolid_ManifoldSolid.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_ManifoldSolid*(): IGESSolid_ManifoldSolid {.constructor,
    importcpp: "IGESSolid_ManifoldSolid(@)", header: "IGESSolid_ManifoldSolid.hxx".}
proc Init*(this: var IGESSolid_ManifoldSolid; aShell: handle[IGESSolid_Shell];
          shellflag: Standard_Boolean;
          voidShells: handle[IGESSolid_HArray1OfShell];
          voidShellFlags: handle[TColStd_HArray1OfInteger]) {.importcpp: "Init",
    header: "IGESSolid_ManifoldSolid.hxx".}
proc Shell*(this: IGESSolid_ManifoldSolid): handle[IGESSolid_Shell] {.noSideEffect,
    importcpp: "Shell", header: "IGESSolid_ManifoldSolid.hxx".}
proc OrientationFlag*(this: IGESSolid_ManifoldSolid): Standard_Boolean {.
    noSideEffect, importcpp: "OrientationFlag",
    header: "IGESSolid_ManifoldSolid.hxx".}
proc NbVoidShells*(this: IGESSolid_ManifoldSolid): Standard_Integer {.noSideEffect,
    importcpp: "NbVoidShells", header: "IGESSolid_ManifoldSolid.hxx".}
proc VoidShell*(this: IGESSolid_ManifoldSolid; Index: Standard_Integer): handle[
    IGESSolid_Shell] {.noSideEffect, importcpp: "VoidShell",
                      header: "IGESSolid_ManifoldSolid.hxx".}
proc VoidOrientationFlag*(this: IGESSolid_ManifoldSolid; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "VoidOrientationFlag",
    header: "IGESSolid_ManifoldSolid.hxx".}
type
  IGESSolid_ManifoldSolidbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_ManifoldSolid::get_type_name(@)",
                              header: "IGESSolid_ManifoldSolid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_ManifoldSolid::get_type_descriptor(@)",
    header: "IGESSolid_ManifoldSolid.hxx".}
proc DynamicType*(this: IGESSolid_ManifoldSolid): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_ManifoldSolid.hxx".}