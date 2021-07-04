##  Created on: 1995-03-08
##  Created by: Mister rmi
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TopoDS/TopoDS_Shape,
  ../SelectMgr/SelectMgr_EntityOwner, ../PrsMgr/PrsMgr_PresentationManager3d,
  ../Quantity/Quantity_NameOfColor, ../Graphic3d/Graphic3d_ZLayerId

discard "forward decl of StdSelect_Shape"
discard "forward decl of TopoDS_Shape"
discard "forward decl of SelectMgr_SelectableObject"
discard "forward decl of PrsMgr_PresentationManager"
discard "forward decl of TopLoc_Location"
discard "forward decl of StdSelect_BRepOwner"
type
  Handle_StdSelect_BRepOwner* = handle[StdSelect_BRepOwner]

## ! Defines Specific Owners for Sensitive Primitives
## ! (Sensitive Segments,Circles...).
## ! Used in Dynamic Selection Mechanism.
## ! A BRepOwner has an Owner (the shape it represents)
## ! and Users (One or More Transient entities).
## ! The highlight-unhighlight methods are empty and
## ! must be redefined by each User.

type
  StdSelect_BRepOwner* {.importcpp: "StdSelect_BRepOwner",
                        header: "StdSelect_BRepOwner.hxx", bycopy.} = object of SelectMgr_EntityOwner ##
                                                                                               ## !
                                                                                               ## Constructs
                                                                                               ## an
                                                                                               ## owner
                                                                                               ## specification
                                                                                               ## framework
                                                                                               ## defined
                                                                                               ##
                                                                                               ## !
                                                                                               ## by
                                                                                               ## the
                                                                                               ## priority
                                                                                               ## aPriority.

  StdSelect_BRepOwnerbase_type* = SelectMgr_EntityOwner

proc get_type_name*(): cstring {.importcpp: "StdSelect_BRepOwner::get_type_name(@)",
                              header: "StdSelect_BRepOwner.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdSelect_BRepOwner::get_type_descriptor(@)",
    header: "StdSelect_BRepOwner.hxx".}
proc DynamicType*(this: StdSelect_BRepOwner): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StdSelect_BRepOwner.hxx".}
proc constructStdSelect_BRepOwner*(aPriority: Standard_Integer): StdSelect_BRepOwner {.
    constructor, importcpp: "StdSelect_BRepOwner(@)",
    header: "StdSelect_BRepOwner.hxx".}
proc constructStdSelect_BRepOwner*(aShape: TopoDS_Shape;
                                  aPriority: Standard_Integer = 0;
    ComesFromDecomposition: Standard_Boolean = Standard_False): StdSelect_BRepOwner {.
    constructor, importcpp: "StdSelect_BRepOwner(@)",
    header: "StdSelect_BRepOwner.hxx".}
proc constructStdSelect_BRepOwner*(aShape: TopoDS_Shape; theOrigin: handle[
    SelectMgr_SelectableObject]; aPriority: Standard_Integer = 0; FromDecomposition: Standard_Boolean = Standard_False): StdSelect_BRepOwner {.
    constructor, importcpp: "StdSelect_BRepOwner(@)",
    header: "StdSelect_BRepOwner.hxx".}
proc HasShape*(this: StdSelect_BRepOwner): Standard_Boolean {.noSideEffect,
    importcpp: "HasShape", header: "StdSelect_BRepOwner.hxx".}
proc Shape*(this: StdSelect_BRepOwner): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "StdSelect_BRepOwner.hxx".}
proc HasHilightMode*(this: StdSelect_BRepOwner): Standard_Boolean {.noSideEffect,
    importcpp: "HasHilightMode", header: "StdSelect_BRepOwner.hxx".}
proc SetHilightMode*(this: var StdSelect_BRepOwner; theMode: Standard_Integer) {.
    importcpp: "SetHilightMode", header: "StdSelect_BRepOwner.hxx".}
proc ResetHilightMode*(this: var StdSelect_BRepOwner) {.
    importcpp: "ResetHilightMode", header: "StdSelect_BRepOwner.hxx".}
proc HilightMode*(this: StdSelect_BRepOwner): Standard_Integer {.noSideEffect,
    importcpp: "HilightMode", header: "StdSelect_BRepOwner.hxx".}
proc IsHilighted*(this: StdSelect_BRepOwner;
                 aPM: handle[PrsMgr_PresentationManager];
                 aMode: Standard_Integer = 0): Standard_Boolean {.noSideEffect,
    importcpp: "IsHilighted", header: "StdSelect_BRepOwner.hxx".}
proc HilightWithColor*(this: var StdSelect_BRepOwner;
                      thePM: handle[PrsMgr_PresentationManager3d];
                      theStyle: handle[Prs3d_Drawer];
                      theMode: Standard_Integer = 0) {.
    importcpp: "HilightWithColor", header: "StdSelect_BRepOwner.hxx".}
proc Unhilight*(this: var StdSelect_BRepOwner;
               aPM: handle[PrsMgr_PresentationManager];
               aMode: Standard_Integer = 0) {.importcpp: "Unhilight",
    header: "StdSelect_BRepOwner.hxx".}
proc Clear*(this: var StdSelect_BRepOwner; aPM: handle[PrsMgr_PresentationManager];
           aMode: Standard_Integer = 0) {.importcpp: "Clear",
                                      header: "StdSelect_BRepOwner.hxx".}
proc SetLocation*(this: var StdSelect_BRepOwner; aLoc: TopLoc_Location) {.
    importcpp: "SetLocation", header: "StdSelect_BRepOwner.hxx".}
proc UpdateHighlightTrsf*(this: var StdSelect_BRepOwner;
                         theViewer: handle[V3d_Viewer];
                         theManager: handle[PrsMgr_PresentationManager3d];
                         theDispMode: Standard_Integer) {.
    importcpp: "UpdateHighlightTrsf", header: "StdSelect_BRepOwner.hxx".}
proc DumpJson*(this: StdSelect_BRepOwner; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "StdSelect_BRepOwner.hxx".}