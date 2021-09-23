##  Copyright (c) 2017 OPEN CASCADE SAS
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
  ../NCollection/NCollection_IndexedDataMap, Graphic3d_CLight

## ! Class defining the set of light sources.

type
  Graphic3d_LightSet* {.importcpp: "Graphic3d_LightSet",
                       header: "Graphic3d_LightSet.hxx", bycopy.} = object of Standard_Transient ##
                                                                                          ## !
                                                                                          ## Iteration
                                                                                          ## filter
                                                                                          ## flags.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Empty
                                                                                          ## constructor.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Update
                                                                                          ## light
                                                                                          ## sources
                                                                                          ## revision.
    ## !< list of light sources with their cached state (revision)
    ## !< cached value of cumulative ambient color
    ## !< key identifying the list of enabled light sources by their type
    ## !< key identifying the list of enabled light sources by the number of sources of each type
    ## !< counters per each light source type defined in the list
    ## !< counters per each light source type enabled in the list
    ## !< number of enabled light sources, excluding ambient
    ## !< current revision of light source set
    ## !< revision of cached state

  Graphic3d_LightSetbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_LightSet::get_type_name(@)",
                              header: "Graphic3d_LightSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_LightSet::get_type_descriptor(@)",
    header: "Graphic3d_LightSet.hxx".}
proc DynamicType*(this: Graphic3d_LightSet): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_LightSet.hxx".}
type
  Graphic3d_LightSetIterationFilter* {.size: sizeof(cint), importcpp: "Graphic3d_LightSet::IterationFilter",
                                      header: "Graphic3d_LightSet.hxx".} = enum
    IterationFilter_None = 0x0000, ## !< no filter
    IterationFilter_ExcludeAmbient = 0x0002, ## !< exclude ambient  light sources
    IterationFilter_ExcludeDisabled = 0x0004, ## !< exclude disabled light sources
    IterationFilter_ExcludeDisabledAndAmbient = IterationFilter_ExcludeAmbient or
        IterationFilter_ExcludeDisabled


type
  Graphic3d_LightSetIterator* {.importcpp: "Graphic3d_LightSet::Iterator",
                               header: "Graphic3d_LightSet.hxx", bycopy.} = object ## !
                                                                              ## Empty
                                                                              ## constructor.
                                                                              ## !
                                                                              ## Skip
                                                                              ## filtered
                                                                              ## items.


proc constructGraphic3d_LightSetIterator*(): Graphic3d_LightSetIterator {.
    constructor, importcpp: "Graphic3d_LightSet::Iterator(@)",
    header: "Graphic3d_LightSet.hxx".}
proc constructGraphic3d_LightSetIterator*(theSet: Graphic3d_LightSet;
    theFilter: Graphic3d_LightSetIterationFilter = IterationFilter_None): Graphic3d_LightSetIterator {.
    constructor, importcpp: "Graphic3d_LightSet::Iterator(@)",
    header: "Graphic3d_LightSet.hxx".}
proc constructGraphic3d_LightSetIterator*(theSet: handle[Graphic3d_LightSet];
    theFilter: Graphic3d_LightSetIterationFilter = IterationFilter_None): Graphic3d_LightSetIterator {.
    constructor, importcpp: "Graphic3d_LightSet::Iterator(@)",
    header: "Graphic3d_LightSet.hxx".}
proc More*(this: Graphic3d_LightSetIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "Graphic3d_LightSet.hxx".}
proc Value*(this: Graphic3d_LightSetIterator): handle[Graphic3d_CLight] {.
    noSideEffect, importcpp: "Value", header: "Graphic3d_LightSet.hxx".}
proc Next*(this: var Graphic3d_LightSetIterator) {.importcpp: "Next",
    header: "Graphic3d_LightSet.hxx".}
proc constructGraphic3d_LightSet*(): Graphic3d_LightSet {.constructor,
    importcpp: "Graphic3d_LightSet(@)", header: "Graphic3d_LightSet.hxx".}
proc Lower*(this: Graphic3d_LightSet): Standard_Integer {.noSideEffect,
    importcpp: "Lower", header: "Graphic3d_LightSet.hxx".}
proc Upper*(this: Graphic3d_LightSet): Standard_Integer {.noSideEffect,
    importcpp: "Upper", header: "Graphic3d_LightSet.hxx".}
proc IsEmpty*(this: Graphic3d_LightSet): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Graphic3d_LightSet.hxx".}
proc Extent*(this: Graphic3d_LightSet): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "Graphic3d_LightSet.hxx".}
proc Value*(this: Graphic3d_LightSet; theIndex: Standard_Integer): handle[
    Graphic3d_CLight] {.noSideEffect, importcpp: "Value",
                       header: "Graphic3d_LightSet.hxx".}
proc Contains*(this: Graphic3d_LightSet; theLight: handle[Graphic3d_CLight]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Graphic3d_LightSet.hxx".}
proc Add*(this: var Graphic3d_LightSet; theLight: handle[Graphic3d_CLight]): Standard_Boolean {.
    importcpp: "Add", header: "Graphic3d_LightSet.hxx".}
proc Remove*(this: var Graphic3d_LightSet; theLight: handle[Graphic3d_CLight]): Standard_Boolean {.
    importcpp: "Remove", header: "Graphic3d_LightSet.hxx".}
proc NbLightsOfType*(this: Graphic3d_LightSet; theType: Graphic3d_TypeOfLightSource): Standard_Integer {.
    noSideEffect, importcpp: "NbLightsOfType", header: "Graphic3d_LightSet.hxx".}
proc UpdateRevision*(this: var Graphic3d_LightSet): Standard_Size {.
    importcpp: "UpdateRevision", header: "Graphic3d_LightSet.hxx".}
proc Revision*(this: Graphic3d_LightSet): Standard_Size {.noSideEffect,
    importcpp: "Revision", header: "Graphic3d_LightSet.hxx".}
proc NbEnabled*(this: Graphic3d_LightSet): Standard_Integer {.noSideEffect,
    importcpp: "NbEnabled", header: "Graphic3d_LightSet.hxx".}
proc NbEnabledLightsOfType*(this: Graphic3d_LightSet;
                           theType: Graphic3d_TypeOfLightSource): Standard_Integer {.
    noSideEffect, importcpp: "NbEnabledLightsOfType",
    header: "Graphic3d_LightSet.hxx".}
proc AmbientColor*(this: Graphic3d_LightSet): Graphic3d_Vec4 {.noSideEffect,
    importcpp: "AmbientColor", header: "Graphic3d_LightSet.hxx".}
proc KeyEnabledLong*(this: Graphic3d_LightSet): TCollection_AsciiString {.
    noSideEffect, importcpp: "KeyEnabledLong", header: "Graphic3d_LightSet.hxx".}
proc KeyEnabledShort*(this: Graphic3d_LightSet): TCollection_AsciiString {.
    noSideEffect, importcpp: "KeyEnabledShort", header: "Graphic3d_LightSet.hxx".}
discard "forward decl of Graphic3d_LightSet"
type
  Handle_Graphic3d_LightSet* = handle[Graphic3d_LightSet]
