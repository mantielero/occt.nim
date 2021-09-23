##  Created on: 2018-12-12
##  Created by: Olga SURYANINOVA
##  Copyright (c) 2018 OPEN CASCADE SAS
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
  AIS_InteractiveObject

discard "forward decl of Graphic3d_ArrayOfSegments"
discard "forward decl of Graphic3d_ArrayOfTriangles"
type
  AIS_CameraFrustum* {.importcpp: "AIS_CameraFrustum",
                      header: "AIS_CameraFrustum.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                           ## !
                                                                                           ## Selection
                                                                                           ## modes
                                                                                           ## supported
                                                                                           ## by
                                                                                           ## this
                                                                                           ## object
                                                                                           ##
                                                                                           ## !
                                                                                           ## Constructs
                                                                                           ## camera
                                                                                           ## frustum
                                                                                           ## with
                                                                                           ## default
                                                                                           ## configuration.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Computes
                                                                                           ## presentation
                                                                                           ## of
                                                                                           ## camera
                                                                                           ## frustum.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Fills
                                                                                           ## triangles
                                                                                           ## primitive
                                                                                           ## array
                                                                                           ## for
                                                                                           ## camera
                                                                                           ## frustum
                                                                                           ## filling.
    ## !< Array of points
    ## !< Triangles for camera frustum filling
    ## !< Segments for camera frustum borders

  AIS_CameraFrustumbase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_CameraFrustum::get_type_name(@)",
                              header: "AIS_CameraFrustum.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_CameraFrustum::get_type_descriptor(@)",
    header: "AIS_CameraFrustum.hxx".}
proc DynamicType*(this: AIS_CameraFrustum): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_CameraFrustum.hxx".}
type
  AIS_CameraFrustumSelectionMode* {.size: sizeof(cint), importcpp: "AIS_CameraFrustum::SelectionMode",
                                   header: "AIS_CameraFrustum.hxx".} = enum
    SelectionMode_Edges = 0,    ## !< detect by edges (default)
    SelectionMode_Volume = 1    ## !< detect by volume


proc constructAIS_CameraFrustum*(): AIS_CameraFrustum {.constructor,
    importcpp: "AIS_CameraFrustum(@)", header: "AIS_CameraFrustum.hxx".}
proc SetCameraFrustum*(this: var AIS_CameraFrustum;
                      theCamera: handle[Graphic3d_Camera]) {.
    importcpp: "SetCameraFrustum", header: "AIS_CameraFrustum.hxx".}
proc SetColor*(this: var AIS_CameraFrustum; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "AIS_CameraFrustum.hxx".}
proc UnsetColor*(this: var AIS_CameraFrustum) {.importcpp: "UnsetColor",
    header: "AIS_CameraFrustum.hxx".}
proc UnsetTransparency*(this: var AIS_CameraFrustum) {.
    importcpp: "UnsetTransparency", header: "AIS_CameraFrustum.hxx".}
proc AcceptDisplayMode*(this: AIS_CameraFrustum; theMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "AIS_CameraFrustum.hxx".}