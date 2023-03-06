import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import opengl_types



##  Created on: 2013-08-15
##  Created by: Anton POLETAEV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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





proc newOpenGlCappingPlaneResource*(thePlane: Handle[Graphic3dClipPlane]): OpenGlCappingPlaneResource {.
    cdecl, constructor, importcpp: "OpenGl_CappingPlaneResource(@)",
    header: "OpenGl_CappingPlaneResource.hxx".}
proc destroyOpenGlCappingPlaneResource*(this: var OpenGlCappingPlaneResource) {.
    cdecl, importcpp: "#.~OpenGl_CappingPlaneResource()", header: "OpenGl_CappingPlaneResource.hxx".}
proc update*(this: var OpenGlCappingPlaneResource;
            theContext: Handle[OpenGlContext];
            theObjAspect: Handle[Graphic3dAspects]) {.cdecl, importcpp: "Update",
    header: "OpenGl_CappingPlaneResource.hxx".}
proc release*(this: var OpenGlCappingPlaneResource; theContext: ptr OpenGlContext) {.
    cdecl, importcpp: "Release", header: "OpenGl_CappingPlaneResource.hxx".}
proc estimatedDataSize*(this: OpenGlCappingPlaneResource): csize_t {.noSideEffect,
    cdecl, importcpp: "EstimatedDataSize", header: "OpenGl_CappingPlaneResource.hxx".}
proc plane*(this: OpenGlCappingPlaneResource): Handle[Graphic3dClipPlane] {.
    noSideEffect, cdecl, importcpp: "Plane", header: "OpenGl_CappingPlaneResource.hxx".}
proc aspectFace*(this: OpenGlCappingPlaneResource): ptr OpenGlAspects {.noSideEffect,
    cdecl, importcpp: "AspectFace", header: "OpenGl_CappingPlaneResource.hxx".}
proc orientation*(this: OpenGlCappingPlaneResource): ptr OpenGlMatrix {.noSideEffect,
    cdecl, importcpp: "Orientation", header: "OpenGl_CappingPlaneResource.hxx".}
proc primitives*(this: OpenGlCappingPlaneResource): OpenGlPrimitiveArray {.
    noSideEffect, cdecl, importcpp: "Primitives", header: "OpenGl_CappingPlaneResource.hxx".}

