##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Niraj RANGWALA )
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

discard "forward decl of IGESGeom_Plane"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of IGESData_TransfEntity"
discard "forward decl of gp_XYZ"
discard "forward decl of IGESDraw_View"
discard "forward decl of IGESDraw_View"
type
  HandleIGESDrawView* = Handle[IGESDrawView]

## ! defines IGES View Entity, Type <410> Form <0>
## ! in package IGESDraw
## !
## ! Used to define a framework for specifying a viewing
## ! orientation of an object in three dimensional model
## ! space (X,Y,Z). The framework is also used to support
## ! the projection of all or part of model space onto a
## ! view volume.

type
  IGESDrawView* {.importcpp: "IGESDraw_View", header: "IGESDraw_View.hxx", bycopy.} = object of IGESDataViewKindEntity


proc constructIGESDrawView*(): IGESDrawView {.constructor,
    importcpp: "IGESDraw_View(@)", header: "IGESDraw_View.hxx".}
proc init*(this: var IGESDrawView; aViewNum: int; aScale: float;
          aLeftPlane: Handle[IGESGeomPlane]; aTopPlane: Handle[IGESGeomPlane];
          aRightPlane: Handle[IGESGeomPlane]; aBottomPlane: Handle[IGESGeomPlane];
          aBackPlane: Handle[IGESGeomPlane]; aFrontPlane: Handle[IGESGeomPlane]) {.
    importcpp: "Init", header: "IGESDraw_View.hxx".}
proc isSingle*(this: IGESDrawView): bool {.noSideEffect, importcpp: "IsSingle",
                                       header: "IGESDraw_View.hxx".}
proc nbViews*(this: IGESDrawView): int {.noSideEffect, importcpp: "NbViews",
                                     header: "IGESDraw_View.hxx".}
proc viewItem*(this: IGESDrawView; num: int): Handle[IGESDataViewKindEntity] {.
    noSideEffect, importcpp: "ViewItem", header: "IGESDraw_View.hxx".}
proc viewNumber*(this: IGESDrawView): int {.noSideEffect, importcpp: "ViewNumber",
                                        header: "IGESDraw_View.hxx".}
proc scaleFactor*(this: IGESDrawView): float {.noSideEffect,
    importcpp: "ScaleFactor", header: "IGESDraw_View.hxx".}
proc hasLeftPlane*(this: IGESDrawView): bool {.noSideEffect,
    importcpp: "HasLeftPlane", header: "IGESDraw_View.hxx".}
proc leftPlane*(this: IGESDrawView): Handle[IGESGeomPlane] {.noSideEffect,
    importcpp: "LeftPlane", header: "IGESDraw_View.hxx".}
proc hasTopPlane*(this: IGESDrawView): bool {.noSideEffect, importcpp: "HasTopPlane",
    header: "IGESDraw_View.hxx".}
proc topPlane*(this: IGESDrawView): Handle[IGESGeomPlane] {.noSideEffect,
    importcpp: "TopPlane", header: "IGESDraw_View.hxx".}
proc hasRightPlane*(this: IGESDrawView): bool {.noSideEffect,
    importcpp: "HasRightPlane", header: "IGESDraw_View.hxx".}
proc rightPlane*(this: IGESDrawView): Handle[IGESGeomPlane] {.noSideEffect,
    importcpp: "RightPlane", header: "IGESDraw_View.hxx".}
proc hasBottomPlane*(this: IGESDrawView): bool {.noSideEffect,
    importcpp: "HasBottomPlane", header: "IGESDraw_View.hxx".}
proc bottomPlane*(this: IGESDrawView): Handle[IGESGeomPlane] {.noSideEffect,
    importcpp: "BottomPlane", header: "IGESDraw_View.hxx".}
proc hasBackPlane*(this: IGESDrawView): bool {.noSideEffect,
    importcpp: "HasBackPlane", header: "IGESDraw_View.hxx".}
proc backPlane*(this: IGESDrawView): Handle[IGESGeomPlane] {.noSideEffect,
    importcpp: "BackPlane", header: "IGESDraw_View.hxx".}
proc hasFrontPlane*(this: IGESDrawView): bool {.noSideEffect,
    importcpp: "HasFrontPlane", header: "IGESDraw_View.hxx".}
proc frontPlane*(this: IGESDrawView): Handle[IGESGeomPlane] {.noSideEffect,
    importcpp: "FrontPlane", header: "IGESDraw_View.hxx".}
proc viewMatrix*(this: IGESDrawView): Handle[IGESDataTransfEntity] {.noSideEffect,
    importcpp: "ViewMatrix", header: "IGESDraw_View.hxx".}
proc modelToView*(this: IGESDrawView; coords: Xyz): Xyz {.noSideEffect,
    importcpp: "ModelToView", header: "IGESDraw_View.hxx".}
type
  IGESDrawViewbaseType* = IGESDataViewKindEntity

proc getTypeName*(): cstring {.importcpp: "IGESDraw_View::get_type_name(@)",
                            header: "IGESDraw_View.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_View::get_type_descriptor(@)",
    header: "IGESDraw_View.hxx".}
proc dynamicType*(this: IGESDrawView): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDraw_View.hxx".}
