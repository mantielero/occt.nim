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

discard "forward decl of StdSelect_Shape"
discard "forward decl of TopoDS_Shape"
discard "forward decl of SelectMgr_SelectableObject"
discard "forward decl of PrsMgr_PresentationManager"
discard "forward decl of TopLoc_Location"
discard "forward decl of StdSelect_BRepOwner"
type
  HandleC1C1* = Handle[StdSelectBRepOwner]

## ! Defines Specific Owners for Sensitive Primitives
## ! (Sensitive Segments,Circles...).
## ! Used in Dynamic Selection Mechanism.
## ! A BRepOwner has an Owner (the shape it represents)
## ! and Users (One or More Transient entities).
## ! The highlight-unhighlight methods are empty and
## ! must be redefined by each User.

type
  StdSelectBRepOwner* {.importcpp: "StdSelect_BRepOwner",
                       header: "StdSelect_BRepOwner.hxx", bycopy.} = object of SelectMgrEntityOwner ##
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

  StdSelectBRepOwnerbaseType* = SelectMgrEntityOwner

proc getTypeName*(): cstring {.importcpp: "StdSelect_BRepOwner::get_type_name(@)",
                            header: "StdSelect_BRepOwner.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdSelect_BRepOwner::get_type_descriptor(@)",
    header: "StdSelect_BRepOwner.hxx".}
proc dynamicType*(this: StdSelectBRepOwner): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StdSelect_BRepOwner.hxx".}
proc constructStdSelectBRepOwner*(aPriority: cint): StdSelectBRepOwner {.
    constructor, importcpp: "StdSelect_BRepOwner(@)",
    header: "StdSelect_BRepOwner.hxx".}
proc constructStdSelectBRepOwner*(aShape: TopoDS_Shape; aPriority: cint = 0;
                                 comesFromDecomposition: bool = false): StdSelectBRepOwner {.
    constructor, importcpp: "StdSelect_BRepOwner(@)",
    header: "StdSelect_BRepOwner.hxx".}
proc constructStdSelectBRepOwner*(aShape: TopoDS_Shape;
                                 theOrigin: Handle[SelectMgrSelectableObject];
                                 aPriority: cint = 0;
                                 fromDecomposition: bool = false): StdSelectBRepOwner {.
    constructor, importcpp: "StdSelect_BRepOwner(@)",
    header: "StdSelect_BRepOwner.hxx".}
proc hasShape*(this: StdSelectBRepOwner): bool {.noSideEffect, importcpp: "HasShape",
    header: "StdSelect_BRepOwner.hxx".}
proc shape*(this: StdSelectBRepOwner): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "StdSelect_BRepOwner.hxx".}
proc hasHilightMode*(this: StdSelectBRepOwner): bool {.noSideEffect,
    importcpp: "HasHilightMode", header: "StdSelect_BRepOwner.hxx".}
proc setHilightMode*(this: var StdSelectBRepOwner; theMode: cint) {.
    importcpp: "SetHilightMode", header: "StdSelect_BRepOwner.hxx".}
proc resetHilightMode*(this: var StdSelectBRepOwner) {.
    importcpp: "ResetHilightMode", header: "StdSelect_BRepOwner.hxx".}
proc hilightMode*(this: StdSelectBRepOwner): cint {.noSideEffect,
    importcpp: "HilightMode", header: "StdSelect_BRepOwner.hxx".}
proc isHilighted*(this: StdSelectBRepOwner; aPM: Handle[PrsMgrPresentationManager];
                 aMode: cint = 0): bool {.noSideEffect, importcpp: "IsHilighted",
                                     header: "StdSelect_BRepOwner.hxx".}
proc hilightWithColor*(this: var StdSelectBRepOwner;
                      thePM: Handle[PrsMgrPresentationManager3d];
                      theStyle: Handle[Prs3dDrawer]; theMode: cint = 0) {.
    importcpp: "HilightWithColor", header: "StdSelect_BRepOwner.hxx".}
proc unhilight*(this: var StdSelectBRepOwner;
               aPM: Handle[PrsMgrPresentationManager]; aMode: cint = 0) {.
    importcpp: "Unhilight", header: "StdSelect_BRepOwner.hxx".}
proc clear*(this: var StdSelectBRepOwner; aPM: Handle[PrsMgrPresentationManager];
           aMode: cint = 0) {.importcpp: "Clear", header: "StdSelect_BRepOwner.hxx".}
proc setLocation*(this: var StdSelectBRepOwner; aLoc: TopLocLocation) {.
    importcpp: "SetLocation", header: "StdSelect_BRepOwner.hxx".}
proc updateHighlightTrsf*(this: var StdSelectBRepOwner;
                         theViewer: Handle[V3dViewer];
                         theManager: Handle[PrsMgrPresentationManager3d];
                         theDispMode: cint) {.importcpp: "UpdateHighlightTrsf",
    header: "StdSelect_BRepOwner.hxx".}
proc dumpJson*(this: StdSelectBRepOwner; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "StdSelect_BRepOwner.hxx".}

























