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
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESGeom_TransformationMatrix"
discard "forward decl of IGESSolid_SolidAssembly"
discard "forward decl of IGESSolid_SolidAssembly"
type
  HandleIGESSolidSolidAssembly* = Handle[IGESSolidSolidAssembly]

## ! defines SolidAssembly, Type <184> Form <0>
## ! in package IGESSolid
## ! Solid assembly is a collection of items which possess a
## ! shared fixed geometric relationship.
## !
## ! From IGES-5.3, From 1 says that at least one item is a Brep
## ! else all are Primitives, Boolean Trees, Solid Instances or
## ! other Assemblies

type
  IGESSolidSolidAssembly* {.importcpp: "IGESSolid_SolidAssembly",
                           header: "IGESSolid_SolidAssembly.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidSolidAssembly*(): IGESSolidSolidAssembly {.constructor,
    importcpp: "IGESSolid_SolidAssembly(@)", header: "IGESSolid_SolidAssembly.hxx".}
proc init*(this: var IGESSolidSolidAssembly;
          allItems: Handle[IGESDataHArray1OfIGESEntity];
          allMatrices: Handle[IGESGeomHArray1OfTransformationMatrix]) {.
    importcpp: "Init", header: "IGESSolid_SolidAssembly.hxx".}
proc hasBrep*(this: IGESSolidSolidAssembly): bool {.noSideEffect,
    importcpp: "HasBrep", header: "IGESSolid_SolidAssembly.hxx".}
proc setBrep*(this: var IGESSolidSolidAssembly; hasbrep: bool) {.importcpp: "SetBrep",
    header: "IGESSolid_SolidAssembly.hxx".}
proc nbItems*(this: IGESSolidSolidAssembly): int {.noSideEffect,
    importcpp: "NbItems", header: "IGESSolid_SolidAssembly.hxx".}
proc item*(this: IGESSolidSolidAssembly; index: int): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Item", header: "IGESSolid_SolidAssembly.hxx".}
proc transfMatrix*(this: IGESSolidSolidAssembly; index: int): Handle[
    IGESGeomTransformationMatrix] {.noSideEffect, importcpp: "TransfMatrix",
                                   header: "IGESSolid_SolidAssembly.hxx".}
type
  IGESSolidSolidAssemblybaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_SolidAssembly::get_type_name(@)",
                            header: "IGESSolid_SolidAssembly.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_SolidAssembly::get_type_descriptor(@)",
    header: "IGESSolid_SolidAssembly.hxx".}
proc dynamicType*(this: IGESSolidSolidAssembly): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_SolidAssembly.hxx".}
