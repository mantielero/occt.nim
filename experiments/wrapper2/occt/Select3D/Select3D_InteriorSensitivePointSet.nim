##  Created on: 2014-08-15
##  Created by: Varvara POSKONINA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

discard "forward decl of gp_Pnt"
discard "forward decl of SelectMgr_EntityOwner"
type
  Select3D_VectorOfHPoly* = NCollectionVector[Handle[Select3D_SensitivePoly]]

## ! This class handles the selection of arbitrary point set with internal type of sensitivity.
## ! The main principle is to split the point set given onto planar convex polygons and search
## ! for the overlap with one or more of them through traverse of BVH tree.

type
  Select3D_InteriorSensitivePointSet* {.importcpp: "Select3D_InteriorSensitivePointSet", header: "Select3D_InteriorSensitivePointSet.hxx",
                                       bycopy.} = object of Select3D_SensitiveSet ## !
                                                                             ## Splits the
                                                                             ## given
                                                                             ## point set
                                                                             ## thePoints
                                                                             ## onto
                                                                             ## planar
                                                                             ## convex
                                                                             ## polygons
                                                                             ## !
                                                                             ## Checks
                                                                             ## whether the
                                                                             ## planar
                                                                             ## convex
                                                                             ## polygon
                                                                             ## with
                                                                             ## index
                                                                             ## theIdx
                                                                             ## ! in
                                                                             ## myPlanarPolygons
                                                                             ## overlaps the
                                                                             ## current
                                                                             ## selecting
                                                                             ## volume
    ## !< Vector of planar polygons
    ## !< Indexes array for BVH calculation
    ## !< Center of the point set
    ## !< Bounding box of the point set


proc constructSelect3D_InteriorSensitivePointSet*(
    theOwnerId: Handle[SelectMgrEntityOwner]; thePoints: TColgpArray1OfPnt): Select3D_InteriorSensitivePointSet {.
    constructor, importcpp: "Select3D_InteriorSensitivePointSet(@)",
    header: "Select3D_InteriorSensitivePointSet.hxx".}
proc getPoints*(this: var Select3D_InteriorSensitivePointSet;
               theHArrayOfPnt: var Handle[TColgpHArray1OfPnt]) {.
    importcpp: "GetPoints", header: "Select3D_InteriorSensitivePointSet.hxx".}
proc size*(this: Select3D_InteriorSensitivePointSet): int {.noSideEffect,
    importcpp: "Size", header: "Select3D_InteriorSensitivePointSet.hxx".}
proc box*(this: Select3D_InteriorSensitivePointSet; theIdx: int): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box",
    header: "Select3D_InteriorSensitivePointSet.hxx".}
proc center*(this: Select3D_InteriorSensitivePointSet; theIdx: int; theAxis: int): float {.
    noSideEffect, importcpp: "Center",
    header: "Select3D_InteriorSensitivePointSet.hxx".}
proc swap*(this: var Select3D_InteriorSensitivePointSet; theIdx1: int; theIdx2: int) {.
    importcpp: "Swap", header: "Select3D_InteriorSensitivePointSet.hxx".}
proc boundingBox*(this: var Select3D_InteriorSensitivePointSet): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_InteriorSensitivePointSet.hxx".}
proc centerOfGeometry*(this: Select3D_InteriorSensitivePointSet): Pnt {.
    noSideEffect, importcpp: "CenterOfGeometry",
    header: "Select3D_InteriorSensitivePointSet.hxx".}
proc nbSubElements*(this: Select3D_InteriorSensitivePointSet): int {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_InteriorSensitivePointSet.hxx".}
proc dumpJson*(this: Select3D_InteriorSensitivePointSet;
              theOStream: var StandardOStream; theDepth: int = -1) {.noSideEffect,
    importcpp: "DumpJson", header: "Select3D_InteriorSensitivePointSet.hxx".}
type
  Select3D_InteriorSensitivePointSetbaseType* = Select3D_SensitiveSet

proc getTypeName*(): cstring {.importcpp: "Select3D_InteriorSensitivePointSet::get_type_name(@)",
                            header: "Select3D_InteriorSensitivePointSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Select3D_InteriorSensitivePointSet::get_type_descriptor(@)",
    header: "Select3D_InteriorSensitivePointSet.hxx".}
proc dynamicType*(this: Select3D_InteriorSensitivePointSet): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Select3D_InteriorSensitivePointSet.hxx".}
discard "forward decl of Select3D_InteriorSensitivePointSet"
type
  HandleSelect3D_InteriorSensitivePointSet* = Handle[
      Select3D_InteriorSensitivePointSet]

