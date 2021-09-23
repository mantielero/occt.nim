##  Created on: 2014-05-29
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

import
  ../BVH/BVH_PrimitiveSet3d, Select3D_BndBox3d, Select3D_BVHBuilder3d,
  Select3D_SensitiveEntity

## ! This class is base class for handling overlap detection of complex sensitive
## ! entities. It provides an interface for building BVH tree for some set of entities.
## ! Thereby, each iteration of overlap detection is a traverse of BVH tree in fact.
## ! To use speed-up hierarchical structure in a custom complex sensitive entity, it is
## ! necessary to make that custom entity a descendant of this class and organize sub-entities
## ! in some container which allows referencing to elements by index. Note that methods taking
## ! index as a parameter are used for BVH build and the range of given index is [0; Size() - 1].
## ! For example of usage see Select3D_SensitiveTriangulation.

type
  Select3D_SensitiveSet* {.importcpp: "Select3D_SensitiveSet",
                          header: "Select3D_SensitiveSet.hxx", bycopy.} = object of Select3D_SensitiveEntity ##
                                                                                                      ## !
                                                                                                      ## Return
                                                                                                      ## global
                                                                                                      ## instance
                                                                                                      ## to
                                                                                                      ## default
                                                                                                      ## BVH
                                                                                                      ## builder.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## new
                                                                                                      ## empty
                                                                                                      ## sensitive
                                                                                                      ## set
                                                                                                      ## and
                                                                                                      ## its
                                                                                                      ## content
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## the
                                                                                                      ## amount
                                                                                                      ## of
                                                                                                      ## sub-entities
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## complex
                                                                                                      ## entity
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Checks
                                                                                                      ## whether
                                                                                                      ## one
                                                                                                      ## or
                                                                                                      ## more
                                                                                                      ## entities
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## set
                                                                                                      ## overlap
                                                                                                      ## current
                                                                                                      ## selecting
                                                                                                      ## volume.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Implements
                                                                                                      ## the
                                                                                                      ## traverse
                                                                                                      ## of
                                                                                                      ## BVH
                                                                                                      ## tree
                                                                                                      ## built
                                                                                                      ## for
                                                                                                      ## the
                                                                                                      ## set
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## @param
                                                                                                      ## theMgr
                                                                                                      ## selection
                                                                                                      ## manager
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## @param
                                                                                                      ## thePickResult
                                                                                                      ## picking
                                                                                                      ## result
                                                                                                      ## (for
                                                                                                      ## picking
                                                                                                      ## by
                                                                                                      ## ray)
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## @param
                                                                                                      ## theToCheckAllInside
                                                                                                      ## flag
                                                                                                      ## indicating
                                                                                                      ## that
                                                                                                      ## even
                                                                                                      ## with
                                                                                                      ## SelectMgr_SelectingVolumeManager::IsOverlapAllowed()
                                                                                                      ## returning
                                                                                                      ## FALSE
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## the
                                                                                                      ## method
                                                                                                      ## will
                                                                                                      ## return
                                                                                                      ## TRUE
                                                                                                      ## if
                                                                                                      ## at
                                                                                                      ## least
                                                                                                      ## one
                                                                                                      ## sub-element
                                                                                                      ## is
                                                                                                      ## fully
                                                                                                      ## inside
                                                                                                      ## selection
                                                                                                      ## volume
                                                                                                      ## ::elementIsInside();
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## this
                                                                                                      ## is
                                                                                                      ## useful
                                                                                                      ## for
                                                                                                      ## entities
                                                                                                      ## allowing
                                                                                                      ## local
                                                                                                      ## selection
                                                                                                      ## of
                                                                                                      ## sub-elements
                                                                                                      ## using
                                                                                                      ## single
                                                                                                      ## Owner
                                                                                                      ## object.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## The
                                                                                                      ## purpose
                                                                                                      ## of
                                                                                                      ## this
                                                                                                      ## class
                                                                                                      ## is
                                                                                                      ## to
                                                                                                      ## provide
                                                                                                      ## a
                                                                                                      ## link
                                                                                                      ## between
                                                                                                      ## BVH_PrimitiveSet
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## and
                                                                                                      ## Select3D_SensitiveSet
                                                                                                      ## instance
                                                                                                      ## to
                                                                                                      ## build
                                                                                                      ## BVH
                                                                                                      ## tree
                                                                                                      ## for
                                                                                                      ## set
                                                                                                      ## of
                                                                                                      ## sensitives.
    ## !< A link between sensitive entity and BVH_PrimitiveSet
    ## !< Index of detected primitive in BVH sorted primitive array

  Select3D_SensitiveSetbase_type* = Select3D_SensitiveEntity

proc get_type_name*(): cstring {.importcpp: "Select3D_SensitiveSet::get_type_name(@)",
                              header: "Select3D_SensitiveSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_SensitiveSet::get_type_descriptor(@)",
    header: "Select3D_SensitiveSet.hxx".}
proc DynamicType*(this: Select3D_SensitiveSet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitiveSet.hxx".}
proc DefaultBVHBuilder*(): handle[Select3D_BVHBuilder3d] {.
    importcpp: "Select3D_SensitiveSet::DefaultBVHBuilder(@)",
    header: "Select3D_SensitiveSet.hxx".}
proc SetDefaultBVHBuilder*(theBuilder: handle[Select3D_BVHBuilder3d]) {.
    importcpp: "Select3D_SensitiveSet::SetDefaultBVHBuilder(@)",
    header: "Select3D_SensitiveSet.hxx".}
proc constructSelect3D_SensitiveSet*(theOwnerId: handle[SelectMgr_EntityOwner]): Select3D_SensitiveSet {.
    constructor, importcpp: "Select3D_SensitiveSet(@)",
    header: "Select3D_SensitiveSet.hxx".}
proc Size*(this: Select3D_SensitiveSet): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "Select3D_SensitiveSet.hxx".}
proc Box*(this: Select3D_SensitiveSet; theIdx: Standard_Integer): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "Select3D_SensitiveSet.hxx".}
proc Center*(this: Select3D_SensitiveSet; theIdx: Standard_Integer;
            theAxis: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Center", header: "Select3D_SensitiveSet.hxx".}
proc Swap*(this: var Select3D_SensitiveSet; theIdx1: Standard_Integer;
          theIdx2: Standard_Integer) {.importcpp: "Swap",
                                     header: "Select3D_SensitiveSet.hxx".}
proc Matches*(this: var Select3D_SensitiveSet;
             theMgr: var SelectBasics_SelectingVolumeManager;
             thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    importcpp: "Matches", header: "Select3D_SensitiveSet.hxx".}
proc BVH*(this: var Select3D_SensitiveSet) {.importcpp: "BVH",
    header: "Select3D_SensitiveSet.hxx".}
proc ToBuildBVH*(this: Select3D_SensitiveSet): Standard_Boolean {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitiveSet.hxx".}
proc SetBuilder*(this: var Select3D_SensitiveSet;
                theBuilder: handle[Select3D_BVHBuilder3d]) {.
    importcpp: "SetBuilder", header: "Select3D_SensitiveSet.hxx".}
proc MarkDirty*(this: var Select3D_SensitiveSet) {.importcpp: "MarkDirty",
    header: "Select3D_SensitiveSet.hxx".}
proc BoundingBox*(this: var Select3D_SensitiveSet): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveSet.hxx".}
proc CenterOfGeometry*(this: Select3D_SensitiveSet): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveSet.hxx".}
proc Clear*(this: var Select3D_SensitiveSet) {.importcpp: "Clear",
    header: "Select3D_SensitiveSet.hxx".}
proc GetLeafNodeSize*(this: Select3D_SensitiveSet): Standard_Integer {.noSideEffect,
    importcpp: "GetLeafNodeSize", header: "Select3D_SensitiveSet.hxx".}
proc DumpJson*(this: Select3D_SensitiveSet; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitiveSet.hxx".}
discard "forward decl of Select3D_SensitiveSet"
type
  Handle_Select3D_SensitiveSet* = handle[Select3D_SensitiveSet]
