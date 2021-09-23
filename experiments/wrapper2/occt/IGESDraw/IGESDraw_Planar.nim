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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../IGESData/IGESData_HArray1OfIGESEntity, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Boolean

discard "forward decl of IGESGeom_TransformationMatrix"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDraw_Planar"
discard "forward decl of IGESDraw_Planar"
type
  Handle_IGESDraw_Planar* = handle[IGESDraw_Planar]

## ! defines IGESPlanar, Type <402> Form <16>
## ! in package IGESDraw
## !
## ! Indicates that a collection of entities is coplanar.The
## ! entities may be geometric, annotative, and/or structural.

type
  IGESDraw_Planar* {.importcpp: "IGESDraw_Planar", header: "IGESDraw_Planar.hxx",
                    bycopy.} = object of IGESData_IGESEntity


proc constructIGESDraw_Planar*(): IGESDraw_Planar {.constructor,
    importcpp: "IGESDraw_Planar(@)", header: "IGESDraw_Planar.hxx".}
proc Init*(this: var IGESDraw_Planar; nbMats: Standard_Integer;
          aTransformationMatrix: handle[IGESGeom_TransformationMatrix];
          allEntities: handle[IGESData_HArray1OfIGESEntity]) {.importcpp: "Init",
    header: "IGESDraw_Planar.hxx".}
proc NbMatrices*(this: IGESDraw_Planar): Standard_Integer {.noSideEffect,
    importcpp: "NbMatrices", header: "IGESDraw_Planar.hxx".}
proc NbEntities*(this: IGESDraw_Planar): Standard_Integer {.noSideEffect,
    importcpp: "NbEntities", header: "IGESDraw_Planar.hxx".}
proc IsIdentityMatrix*(this: IGESDraw_Planar): Standard_Boolean {.noSideEffect,
    importcpp: "IsIdentityMatrix", header: "IGESDraw_Planar.hxx".}
proc TransformMatrix*(this: IGESDraw_Planar): handle[IGESGeom_TransformationMatrix] {.
    noSideEffect, importcpp: "TransformMatrix", header: "IGESDraw_Planar.hxx".}
proc Entity*(this: IGESDraw_Planar; EntityIndex: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Entity",
                          header: "IGESDraw_Planar.hxx".}
type
  IGESDraw_Planarbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDraw_Planar::get_type_name(@)",
                              header: "IGESDraw_Planar.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_Planar::get_type_descriptor(@)",
    header: "IGESDraw_Planar.hxx".}
proc DynamicType*(this: IGESDraw_Planar): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDraw_Planar.hxx".}