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

  Graphic3dLightSetIterationFilter* {.size: sizeof(cint), importcpp: "Graphic3d_LightSet::IterationFilter",
                                     header: "Graphic3d_LightSet.hxx".} = enum
    iterationFilterNone = 0x0000, ## !< no filter
    iterationFilterExcludeAmbient = 0x0002, ## !< exclude ambient  light sources
    iterationFilterExcludeDisabled = 0x0004 ## !< exclude disabled light sources
const
  iterationFilterExcludeDisabledAndAmbient = (iterationFilterExcludeAmbient.int or
        iterationFilterExcludeDisabled.int).Graphic3dLightSetIterationFilter


type
  Graphic3dLightSetIterator* {.importcpp: "Graphic3d_LightSet::Iterator",
                              header: "Graphic3d_LightSet.hxx", bycopy.} = object ## !
                                                                             ## Empty
                                                                             ## constructor.
                                                                             ## !
                                                                             ## Skip
                                                                             ## filtered
                                                                             ## items.


proc newGraphic3dLightSetIterator*(): Graphic3dLightSetIterator {.cdecl,
    constructor, importcpp: "Graphic3d_LightSet::Iterator(@)", header: "Graphic3d_LightSet.hxx".}
proc newGraphic3dLightSetIterator*(theSet: Graphic3dLightSet; theFilter: Graphic3dLightSetIterationFilter = iterationFilterNone): Graphic3dLightSetIterator {.
    cdecl, constructor, importcpp: "Graphic3d_LightSet::Iterator(@)", header: "Graphic3d_LightSet.hxx".}
proc newGraphic3dLightSetIterator*(theSet: Handle[Graphic3dLightSet]; theFilter: Graphic3dLightSetIterationFilter = iterationFilterNone): Graphic3dLightSetIterator {.
    cdecl, constructor, importcpp: "Graphic3d_LightSet::Iterator(@)", header: "Graphic3d_LightSet.hxx".}
proc more*(this: Graphic3dLightSetIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "Graphic3d_LightSet.hxx".}
proc value*(this: Graphic3dLightSetIterator): Handle[Graphic3dCLight] {.
    noSideEffect, cdecl, importcpp: "Value", header: "Graphic3d_LightSet.hxx".}
proc next*(this: var Graphic3dLightSetIterator) {.cdecl, importcpp: "Next",
    header: "Graphic3d_LightSet.hxx".}
proc newGraphic3dLightSet*(): Graphic3dLightSet {.cdecl, constructor,
    importcpp: "Graphic3d_LightSet(@)", header: "Graphic3d_LightSet.hxx".}
proc lower*(this: Graphic3dLightSet): cint {.noSideEffect, cdecl, importcpp: "Lower",
    header: "Graphic3d_LightSet.hxx".}
proc upper*(this: Graphic3dLightSet): cint {.noSideEffect, cdecl, importcpp: "Upper",
    header: "Graphic3d_LightSet.hxx".}
proc isEmpty*(this: Graphic3dLightSet): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "Graphic3d_LightSet.hxx".}
proc extent*(this: Graphic3dLightSet): cint {.noSideEffect, cdecl,
    importcpp: "Extent", header: "Graphic3d_LightSet.hxx".}
proc value*(this: Graphic3dLightSet; theIndex: cint): Handle[Graphic3dCLight] {.
    noSideEffect, cdecl, importcpp: "Value", header: "Graphic3d_LightSet.hxx".}
proc contains*(this: Graphic3dLightSet; theLight: Handle[Graphic3dCLight]): bool {.
    noSideEffect, cdecl, importcpp: "Contains", header: "Graphic3d_LightSet.hxx".}
proc add*(this: var Graphic3dLightSet; theLight: Handle[Graphic3dCLight]): bool {.
    cdecl, importcpp: "Add", header: "Graphic3d_LightSet.hxx".}
proc remove*(this: var Graphic3dLightSet; theLight: Handle[Graphic3dCLight]): bool {.
    cdecl, importcpp: "Remove", header: "Graphic3d_LightSet.hxx".}
proc nbLightsOfType*(this: Graphic3dLightSet; theType: Graphic3dTypeOfLightSource): cint {.
    noSideEffect, cdecl, importcpp: "NbLightsOfType", header: "Graphic3d_LightSet.hxx".}
proc updateRevision*(this: var Graphic3dLightSet): csize_t {.cdecl,
    importcpp: "UpdateRevision", header: "Graphic3d_LightSet.hxx".}
proc revision*(this: Graphic3dLightSet): csize_t {.noSideEffect, cdecl,
    importcpp: "Revision", header: "Graphic3d_LightSet.hxx".}
proc nbEnabled*(this: Graphic3dLightSet): cint {.noSideEffect, cdecl,
    importcpp: "NbEnabled", header: "Graphic3d_LightSet.hxx".}
proc nbEnabledLightsOfType*(this: Graphic3dLightSet;
                           theType: Graphic3dTypeOfLightSource): cint {.
    noSideEffect, cdecl, importcpp: "NbEnabledLightsOfType", header: "Graphic3d_LightSet.hxx".}
proc ambientColor*(this: Graphic3dLightSet): Graphic3dVec4 {.noSideEffect, cdecl,
    importcpp: "AmbientColor", header: "Graphic3d_LightSet.hxx".}
proc keyEnabledLong*(this: Graphic3dLightSet): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "KeyEnabledLong", header: "Graphic3d_LightSet.hxx".}
proc keyEnabledShort*(this: Graphic3dLightSet): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "KeyEnabledShort", header: "Graphic3d_LightSet.hxx".}
type
  HandleGraphic3dLightSet* = Handle[Graphic3dLightSet]
