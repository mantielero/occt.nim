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

import
  IVtkTools, IVtkTools_SubPolyDataFilter, ../NCollection/NCollection_DataMap

# when defined(_MSC_VER):
## ! @class IVtkTools_DisplayModeFilter
## ! @brief Cells filter according to the selected display mode by mesh parts types.
## ! This filter is used to get parts of a shape according to different
## ! display modes.

type
  IVtkTools_DisplayModeFilter* {.importcpp: "IVtkTools_DisplayModeFilter",
                                header: "IVtkTools_DisplayModeFilter.hxx", bycopy.} = object of IVtkTools_SubPolyDataFilter ##
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

proc PrintSelf*(this: var IVtkTools_DisplayModeFilter; os: var ostream;
               indent: vtkIndent) {.importcpp: "PrintSelf",
                                  header: "IVtkTools_DisplayModeFilter.hxx".}
proc SetDisplayMode*(this: var IVtkTools_DisplayModeFilter; aMode: IVtk_DisplayMode) {.
    importcpp: "SetDisplayMode", header: "IVtkTools_DisplayModeFilter.hxx".}
proc SetDisplaySharedVertices*(this: var IVtkTools_DisplayModeFilter;
                              doDisplay: bool) {.
    importcpp: "SetDisplaySharedVertices",
    header: "IVtkTools_DisplayModeFilter.hxx".}
proc GetDisplayMode*(this: IVtkTools_DisplayModeFilter): IVtk_DisplayMode {.
    noSideEffect, importcpp: "GetDisplayMode",
    header: "IVtkTools_DisplayModeFilter.hxx".}
proc MeshTypesForMode*(this: IVtkTools_DisplayModeFilter; theMode: IVtk_DisplayMode): IVtk_IdTypeMap {.
    noSideEffect, importcpp: "MeshTypesForMode",
    header: "IVtkTools_DisplayModeFilter.hxx".}
proc SetMeshTypesForMode*(this: var IVtkTools_DisplayModeFilter;
                         theMode: IVtk_DisplayMode; theMeshTypes: IVtk_IdTypeMap) {.
    importcpp: "SetMeshTypesForMode", header: "IVtkTools_DisplayModeFilter.hxx".}
# proc SetFaceBoundaryDraw*(this: var IVtkTools_DisplayModeFilter; theToDraw: bool) {.
#     importcpp: "SetFaceBoundaryDraw", header: "IVtkTools_DisplayModeFilter.hxx".}
proc FaceBoundaryDraw*(this: IVtkTools_DisplayModeFilter): bool {.noSideEffect,
    importcpp: "FaceBoundaryDraw", header: "IVtkTools_DisplayModeFilter.hxx".}
# when defined(_MSC_VER):
  discard
