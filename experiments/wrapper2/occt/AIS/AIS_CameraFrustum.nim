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

  AIS_CameraFrustumbaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_CameraFrustum::get_type_name(@)",
                            header: "AIS_CameraFrustum.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_CameraFrustum::get_type_descriptor(@)",
    header: "AIS_CameraFrustum.hxx".}
proc dynamicType*(this: AIS_CameraFrustum): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_CameraFrustum.hxx".}
type
  AIS_CameraFrustumSelectionMode* {.size: sizeof(cint), importcpp: "AIS_CameraFrustum::SelectionMode",
                                   header: "AIS_CameraFrustum.hxx".} = enum
    SelectionModeEdges = 0,     ## !< detect by edges (default)
    SelectionModeVolume = 1     ## !< detect by volume


proc constructAIS_CameraFrustum*(): AIS_CameraFrustum {.constructor,
    importcpp: "AIS_CameraFrustum(@)", header: "AIS_CameraFrustum.hxx".}
proc setCameraFrustum*(this: var AIS_CameraFrustum;
                      theCamera: Handle[Graphic3dCamera]) {.
    importcpp: "SetCameraFrustum", header: "AIS_CameraFrustum.hxx".}
proc setColor*(this: var AIS_CameraFrustum; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "AIS_CameraFrustum.hxx".}
proc unsetColor*(this: var AIS_CameraFrustum) {.importcpp: "UnsetColor",
    header: "AIS_CameraFrustum.hxx".}
proc unsetTransparency*(this: var AIS_CameraFrustum) {.
    importcpp: "UnsetTransparency", header: "AIS_CameraFrustum.hxx".}
proc acceptDisplayMode*(this: AIS_CameraFrustum; theMode: cint): bool {.noSideEffect,
    importcpp: "AcceptDisplayMode", header: "AIS_CameraFrustum.hxx".}

























