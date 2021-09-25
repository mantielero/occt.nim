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

## ! Class defining the set of light sources.

type
  Graphic3dLightSet* {.importcpp: "Graphic3d_LightSet",
                      header: "Graphic3d_LightSet.hxx", bycopy.} = object of StandardTransient ##
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

  Graphic3dLightSetbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_LightSet::get_type_name(@)",
                            header: "Graphic3d_LightSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_LightSet::get_type_descriptor(@)",
    header: "Graphic3d_LightSet.hxx".}
proc dynamicType*(this: Graphic3dLightSet): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_LightSet.hxx".}
type
  Graphic3dLightSetIterationFilter* {.size: sizeof(cint), importcpp: "Graphic3d_LightSet::IterationFilter",
                                     header: "Graphic3d_LightSet.hxx".} = enum
    IterationFilterNone = 0x0000, ## !< no filter
    IterationFilterExcludeAmbient = 0x0002, ## !< exclude ambient  light sources
    IterationFilterExcludeDisabled = 0x0004, ## !< exclude disabled light sources
    IterationFilterExcludeDisabledAndAmbient = iterationFilterExcludeAmbient or
        iterationFilterExcludeDisabled


type
  Graphic3dLightSetIterator* {.importcpp: "Graphic3d_LightSet::Iterator",
                              header: "Graphic3d_LightSet.hxx", bycopy.} = object ## !
                                                                             ## Empty
                                                                             ## constructor.
                                                                             ## !
                                                                             ## Skip
                                                                             ## filtered
                                                                             ## items.


proc constructGraphic3dLightSetIterator*(): Graphic3dLightSetIterator {.
    constructor, importcpp: "Graphic3d_LightSet::Iterator(@)",
    header: "Graphic3d_LightSet.hxx".}
proc constructGraphic3dLightSetIterator*(theSet: Graphic3dLightSet; theFilter: Graphic3dLightSetIterationFilter = iterationFilterNone): Graphic3dLightSetIterator {.
    constructor, importcpp: "Graphic3d_LightSet::Iterator(@)",
    header: "Graphic3d_LightSet.hxx".}
proc constructGraphic3dLightSetIterator*(theSet: Handle[Graphic3dLightSet];
    theFilter: Graphic3dLightSetIterationFilter = iterationFilterNone): Graphic3dLightSetIterator {.
    constructor, importcpp: "Graphic3d_LightSet::Iterator(@)",
    header: "Graphic3d_LightSet.hxx".}
proc more*(this: Graphic3dLightSetIterator): bool {.noSideEffect, importcpp: "More",
    header: "Graphic3d_LightSet.hxx".}
proc value*(this: Graphic3dLightSetIterator): Handle[Graphic3dCLight] {.
    noSideEffect, importcpp: "Value", header: "Graphic3d_LightSet.hxx".}
proc next*(this: var Graphic3dLightSetIterator) {.importcpp: "Next",
    header: "Graphic3d_LightSet.hxx".}
proc constructGraphic3dLightSet*(): Graphic3dLightSet {.constructor,
    importcpp: "Graphic3d_LightSet(@)", header: "Graphic3d_LightSet.hxx".}
proc lower*(this: Graphic3dLightSet): int {.noSideEffect, importcpp: "Lower",
                                        header: "Graphic3d_LightSet.hxx".}
proc upper*(this: Graphic3dLightSet): int {.noSideEffect, importcpp: "Upper",
                                        header: "Graphic3d_LightSet.hxx".}
proc isEmpty*(this: Graphic3dLightSet): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "Graphic3d_LightSet.hxx".}
proc extent*(this: Graphic3dLightSet): int {.noSideEffect, importcpp: "Extent",
    header: "Graphic3d_LightSet.hxx".}
proc value*(this: Graphic3dLightSet; theIndex: int): Handle[Graphic3dCLight] {.
    noSideEffect, importcpp: "Value", header: "Graphic3d_LightSet.hxx".}
proc contains*(this: Graphic3dLightSet; theLight: Handle[Graphic3dCLight]): bool {.
    noSideEffect, importcpp: "Contains", header: "Graphic3d_LightSet.hxx".}
proc add*(this: var Graphic3dLightSet; theLight: Handle[Graphic3dCLight]): bool {.
    importcpp: "Add", header: "Graphic3d_LightSet.hxx".}
proc remove*(this: var Graphic3dLightSet; theLight: Handle[Graphic3dCLight]): bool {.
    importcpp: "Remove", header: "Graphic3d_LightSet.hxx".}
proc nbLightsOfType*(this: Graphic3dLightSet; theType: Graphic3dTypeOfLightSource): int {.
    noSideEffect, importcpp: "NbLightsOfType", header: "Graphic3d_LightSet.hxx".}
proc updateRevision*(this: var Graphic3dLightSet): StandardSize {.
    importcpp: "UpdateRevision", header: "Graphic3d_LightSet.hxx".}
proc revision*(this: Graphic3dLightSet): StandardSize {.noSideEffect,
    importcpp: "Revision", header: "Graphic3d_LightSet.hxx".}
proc nbEnabled*(this: Graphic3dLightSet): int {.noSideEffect, importcpp: "NbEnabled",
    header: "Graphic3d_LightSet.hxx".}
proc nbEnabledLightsOfType*(this: Graphic3dLightSet;
                           theType: Graphic3dTypeOfLightSource): int {.
    noSideEffect, importcpp: "NbEnabledLightsOfType",
    header: "Graphic3d_LightSet.hxx".}
proc ambientColor*(this: Graphic3dLightSet): Graphic3dVec4 {.noSideEffect,
    importcpp: "AmbientColor", header: "Graphic3d_LightSet.hxx".}
proc keyEnabledLong*(this: Graphic3dLightSet): TCollectionAsciiString {.
    noSideEffect, importcpp: "KeyEnabledLong", header: "Graphic3d_LightSet.hxx".}
proc keyEnabledShort*(this: Graphic3dLightSet): TCollectionAsciiString {.
    noSideEffect, importcpp: "KeyEnabledShort", header: "Graphic3d_LightSet.hxx".}
discard "forward decl of Graphic3d_LightSet"
type
  HandleGraphic3dLightSet* = Handle[Graphic3dLightSet]

