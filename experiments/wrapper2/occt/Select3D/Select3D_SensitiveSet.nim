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

  Select3D_SensitiveSetbaseType* = Select3D_SensitiveEntity

proc getTypeName*(): cstring {.importcpp: "Select3D_SensitiveSet::get_type_name(@)",
                            header: "Select3D_SensitiveSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Select3D_SensitiveSet::get_type_descriptor(@)",
    header: "Select3D_SensitiveSet.hxx".}
proc dynamicType*(this: Select3D_SensitiveSet): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Select3D_SensitiveSet.hxx".}
proc defaultBVHBuilder*(): Handle[Select3D_BVHBuilder3d] {.
    importcpp: "Select3D_SensitiveSet::DefaultBVHBuilder(@)",
    header: "Select3D_SensitiveSet.hxx".}
proc setDefaultBVHBuilder*(theBuilder: Handle[Select3D_BVHBuilder3d]) {.
    importcpp: "Select3D_SensitiveSet::SetDefaultBVHBuilder(@)",
    header: "Select3D_SensitiveSet.hxx".}
proc constructSelect3D_SensitiveSet*(theOwnerId: Handle[SelectMgrEntityOwner]): Select3D_SensitiveSet {.
    constructor, importcpp: "Select3D_SensitiveSet(@)",
    header: "Select3D_SensitiveSet.hxx".}
proc size*(this: Select3D_SensitiveSet): cint {.noSideEffect, importcpp: "Size",
    header: "Select3D_SensitiveSet.hxx".}
proc box*(this: Select3D_SensitiveSet; theIdx: cint): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "Select3D_SensitiveSet.hxx".}
proc center*(this: Select3D_SensitiveSet; theIdx: cint; theAxis: cint): cfloat {.
    noSideEffect, importcpp: "Center", header: "Select3D_SensitiveSet.hxx".}
proc swap*(this: var Select3D_SensitiveSet; theIdx1: cint; theIdx2: cint) {.
    importcpp: "Swap", header: "Select3D_SensitiveSet.hxx".}
proc matches*(this: var Select3D_SensitiveSet;
             theMgr: var SelectBasicsSelectingVolumeManager;
             thePickResult: var SelectBasicsPickResult): bool {.
    importcpp: "Matches", header: "Select3D_SensitiveSet.hxx".}
proc bvh*(this: var Select3D_SensitiveSet) {.importcpp: "BVH",
    header: "Select3D_SensitiveSet.hxx".}
proc toBuildBVH*(this: Select3D_SensitiveSet): bool {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitiveSet.hxx".}
proc setBuilder*(this: var Select3D_SensitiveSet;
                theBuilder: Handle[Select3D_BVHBuilder3d]) {.
    importcpp: "SetBuilder", header: "Select3D_SensitiveSet.hxx".}
proc markDirty*(this: var Select3D_SensitiveSet) {.importcpp: "MarkDirty",
    header: "Select3D_SensitiveSet.hxx".}
proc boundingBox*(this: var Select3D_SensitiveSet): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveSet.hxx".}
proc centerOfGeometry*(this: Select3D_SensitiveSet): Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveSet.hxx".}
proc clear*(this: var Select3D_SensitiveSet) {.importcpp: "Clear",
    header: "Select3D_SensitiveSet.hxx".}
proc getLeafNodeSize*(this: Select3D_SensitiveSet): cint {.noSideEffect,
    importcpp: "GetLeafNodeSize", header: "Select3D_SensitiveSet.hxx".}
proc dumpJson*(this: Select3D_SensitiveSet; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "Select3D_SensitiveSet.hxx".}
discard "forward decl of Select3D_SensitiveSet"
type
  HandleC1C1* = Handle[Select3D_SensitiveSet]


























