##  Created on: 2011-11-15
##  Created by: Roman KOZLOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

# when defined(_MSC_VER):
## ! @class IVtkTools_DisplayModeFilter
## ! @brief Cells filter according to the selected display mode by mesh parts types.
## ! This filter is used to get parts of a shape according to different
## ! display modes.

type
  IVtkToolsDisplayModeFilter* {.importcpp: "IVtkTools_DisplayModeFilter",
                               header: "IVtkTools_DisplayModeFilter.hxx", bycopy.} = object of IVtkToolsSubPolyDataFilter ##
                                                                                                                   ## !
                                                                                                                   ## Filter
                                                                                                                   ## cells
                                                                                                                   ## according
                                                                                                                   ## to
                                                                                                                   ## the
                                                                                                                   ## given
                                                                                                                   ## set
                                                                                                                   ## of
                                                                                                                   ## ids.
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## Display
                                                                                                                   ## mode
                                                                                                                   ## defining
                                                                                                                   ## mesh
                                                                                                                   ## types
                                                                                                                   ## to
                                                                                                                   ## pass
                                                                                                                   ## through
                                                                                                                   ## this
                                                                                                                   ## filter.
    ## ! Draw Face boundaries flag is applicable only for shading display mode.


## !!!Ignored construct:  public : vtkTypeMacro ( IVtkTools_DisplayModeFilter , IVtkTools_SubPolyDataFilter ) static IVtkTools_DisplayModeFilter * New ( ) ;
## Error: token expected: ) but got: ,!!!

proc printSelf*(this: var IVtkToolsDisplayModeFilter; os: var Ostream;
               indent: VtkIndent) {.importcpp: "PrintSelf",
                                  header: "IVtkTools_DisplayModeFilter.hxx".}
proc setDisplayMode*(this: var IVtkToolsDisplayModeFilter; aMode: IVtkDisplayMode) {.
    importcpp: "SetDisplayMode", header: "IVtkTools_DisplayModeFilter.hxx".}
proc setDisplaySharedVertices*(this: var IVtkToolsDisplayModeFilter; doDisplay: bool) {.
    importcpp: "SetDisplaySharedVertices",
    header: "IVtkTools_DisplayModeFilter.hxx".}
proc getDisplayMode*(this: IVtkToolsDisplayModeFilter): IVtkDisplayMode {.
    noSideEffect, importcpp: "GetDisplayMode",
    header: "IVtkTools_DisplayModeFilter.hxx".}
proc meshTypesForMode*(this: IVtkToolsDisplayModeFilter; theMode: IVtkDisplayMode): IVtkIdTypeMap {.
    noSideEffect, importcpp: "MeshTypesForMode",
    header: "IVtkTools_DisplayModeFilter.hxx".}
proc setMeshTypesForMode*(this: var IVtkToolsDisplayModeFilter;
                         theMode: IVtkDisplayMode; theMeshTypes: IVtkIdTypeMap) {.
    importcpp: "SetMeshTypesForMode", header: "IVtkTools_DisplayModeFilter.hxx".}
proc setFaceBoundaryDraw*(this: var IVtkToolsDisplayModeFilter; theToDraw: bool) {.
    importcpp: "SetFaceBoundaryDraw", header: "IVtkTools_DisplayModeFilter.hxx".}
proc faceBoundaryDraw*(this: IVtkToolsDisplayModeFilter): bool {.noSideEffect,
    importcpp: "FaceBoundaryDraw", header: "IVtkTools_DisplayModeFilter.hxx".}
# # when defined(_MSC_VER):
#   discard

