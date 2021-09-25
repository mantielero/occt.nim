##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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

discard "forward decl of IGESGeom_TransformationMatrix"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDraw_Planar"
discard "forward decl of IGESDraw_Planar"
type
  HandleIGESDrawPlanar* = Handle[IGESDrawPlanar]

## ! defines IGESPlanar, Type <402> Form <16>
## ! in package IGESDraw
## !
## ! Indicates that a collection of entities is coplanar.The
## ! entities may be geometric, annotative, and/or structural.

type
  IGESDrawPlanar* {.importcpp: "IGESDraw_Planar", header: "IGESDraw_Planar.hxx",
                   bycopy.} = object of IGESDataIGESEntity


proc constructIGESDrawPlanar*(): IGESDrawPlanar {.constructor,
    importcpp: "IGESDraw_Planar(@)", header: "IGESDraw_Planar.hxx".}
proc init*(this: var IGESDrawPlanar; nbMats: int;
          aTransformationMatrix: Handle[IGESGeomTransformationMatrix];
          allEntities: Handle[IGESDataHArray1OfIGESEntity]) {.importcpp: "Init",
    header: "IGESDraw_Planar.hxx".}
proc nbMatrices*(this: IGESDrawPlanar): int {.noSideEffect, importcpp: "NbMatrices",
    header: "IGESDraw_Planar.hxx".}
proc nbEntities*(this: IGESDrawPlanar): int {.noSideEffect, importcpp: "NbEntities",
    header: "IGESDraw_Planar.hxx".}
proc isIdentityMatrix*(this: IGESDrawPlanar): bool {.noSideEffect,
    importcpp: "IsIdentityMatrix", header: "IGESDraw_Planar.hxx".}
proc transformMatrix*(this: IGESDrawPlanar): Handle[IGESGeomTransformationMatrix] {.
    noSideEffect, importcpp: "TransformMatrix", header: "IGESDraw_Planar.hxx".}
proc entity*(this: IGESDrawPlanar; entityIndex: int): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Entity", header: "IGESDraw_Planar.hxx".}
type
  IGESDrawPlanarbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDraw_Planar::get_type_name(@)",
                            header: "IGESDraw_Planar.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_Planar::get_type_descriptor(@)",
    header: "IGESDraw_Planar.hxx".}
proc dynamicType*(this: IGESDrawPlanar): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDraw_Planar.hxx".}
