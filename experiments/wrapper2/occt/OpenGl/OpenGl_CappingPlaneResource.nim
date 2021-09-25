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

discard "forward decl of OpenGl_CappingPlaneResource"
discard "forward decl of OpenGl_CappingPlaneResource"
type
  HandleOpenGlCappingPlaneResource* = Handle[OpenGlCappingPlaneResource]

## ! Container of graphical resources for rendering capping plane
## ! associated to graphical clipping plane.
## ! This resource holds data necessary for OpenGl_CappingAlgo.
## ! This object is implemented as OpenGl resource for the following reasons:
## ! - one instance should be shared between contexts.
## ! - instance associated to Graphic3d_ClipPlane data by id.
## ! - should created and released within context (owns OpenGl elements and resources).

type
  OpenGlCappingPlaneResource* {.importcpp: "OpenGl_CappingPlaneResource",
                               header: "OpenGl_CappingPlaneResource.hxx", bycopy.} = object of OpenGlResource ##
                                                                                                       ## !
                                                                                                       ## Constructor.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Create
                                                                                                       ## capping
                                                                                                       ## plane
                                                                                                       ## presentation
                                                                                                       ## associated
                                                                                                       ## to
                                                                                                       ## clipping
                                                                                                       ## plane
                                                                                                       ## data.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## @param
                                                                                                       ## thePlane
                                                                                                       ## [in]
                                                                                                       ## the
                                                                                                       ## plane
                                                                                                       ## data.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Update
                                                                                                       ## precomputed
                                                                                                       ## plane
                                                                                                       ## orientation
                                                                                                       ## matrix.
    ## !< vertices and texture coordinates for rendering
    ## !< plane transformation matrix.
    ## !< capping face aspect.
    ## !< parent clipping plane structure.
    ## !< own capping aspect
    ## !< layer origin
    ## !< modification counter for plane equation.
    ## !< modification counter for aspect.


proc constructOpenGlCappingPlaneResource*(thePlane: Handle[Graphic3dClipPlane]): OpenGlCappingPlaneResource {.
    constructor, importcpp: "OpenGl_CappingPlaneResource(@)",
    header: "OpenGl_CappingPlaneResource.hxx".}
proc destroyOpenGlCappingPlaneResource*(this: var OpenGlCappingPlaneResource) {.
    importcpp: "#.~OpenGl_CappingPlaneResource()",
    header: "OpenGl_CappingPlaneResource.hxx".}
proc update*(this: var OpenGlCappingPlaneResource;
            theContext: Handle[OpenGlContext];
            theObjAspect: Handle[Graphic3dAspects]) {.importcpp: "Update",
    header: "OpenGl_CappingPlaneResource.hxx".}
proc release*(this: var OpenGlCappingPlaneResource; theContext: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_CappingPlaneResource.hxx".}
proc estimatedDataSize*(this: OpenGlCappingPlaneResource): StandardSize {.
    noSideEffect, importcpp: "EstimatedDataSize",
    header: "OpenGl_CappingPlaneResource.hxx".}
proc plane*(this: OpenGlCappingPlaneResource): Handle[Graphic3dClipPlane] {.
    noSideEffect, importcpp: "Plane", header: "OpenGl_CappingPlaneResource.hxx".}
proc aspectFace*(this: OpenGlCappingPlaneResource): ptr OpenGlAspects {.noSideEffect,
    importcpp: "AspectFace", header: "OpenGl_CappingPlaneResource.hxx".}
proc orientation*(this: OpenGlCappingPlaneResource): ptr OpenGlMatrix {.noSideEffect,
    importcpp: "Orientation", header: "OpenGl_CappingPlaneResource.hxx".}
proc primitives*(this: OpenGlCappingPlaneResource): OpenGlPrimitiveArray {.
    noSideEffect, importcpp: "Primitives",
    header: "OpenGl_CappingPlaneResource.hxx".}
type
  OpenGlCappingPlaneResourcebaseType* = OpenGlResource

proc getTypeName*(): cstring {.importcpp: "OpenGl_CappingPlaneResource::get_type_name(@)",
                            header: "OpenGl_CappingPlaneResource.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_CappingPlaneResource::get_type_descriptor(@)",
    header: "OpenGl_CappingPlaneResource.hxx".}
proc dynamicType*(this: OpenGlCappingPlaneResource): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "OpenGl_CappingPlaneResource.hxx".}
