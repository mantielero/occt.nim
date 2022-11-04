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
                                                                                                       ##
                                                                                                       ## Type
                                                                                                       ## definition
    ## !< vertices and texture coordinates for rendering
    ## !< plane transformation matrix.
    ## !< capping face aspect.
    ## !< parent clipping plane structure.
    ## !< own capping aspect
    ## !< layer origin
    ## !< modification counter for plane equation.
    ## !< modification counter for aspect.


proc newOpenGlCappingPlaneResource*(thePlane: Handle[Graphic3dClipPlane]): OpenGlCappingPlaneResource {.
    cdecl, constructor, importcpp: "OpenGl_CappingPlaneResource(@)",
    dynlib: tkkxbase.}
proc destroyOpenGlCappingPlaneResource*(this: var OpenGlCappingPlaneResource) {.
    cdecl, importcpp: "#.~OpenGl_CappingPlaneResource()", dynlib: tkkxbase.}
proc update*(this: var OpenGlCappingPlaneResource;
            theContext: Handle[OpenGlContext];
            theObjAspect: Handle[Graphic3dAspects]) {.cdecl, importcpp: "Update",
    dynlib: tkkxbase.}
proc release*(this: var OpenGlCappingPlaneResource; theContext: ptr OpenGlContext) {.
    cdecl, importcpp: "Release", dynlib: tkkxbase.}
proc estimatedDataSize*(this: OpenGlCappingPlaneResource): csize_t {.noSideEffect,
    cdecl, importcpp: "EstimatedDataSize", dynlib: tkkxbase.}
proc plane*(this: OpenGlCappingPlaneResource): Handle[Graphic3dClipPlane] {.
    noSideEffect, cdecl, importcpp: "Plane", dynlib: tkkxbase.}
proc aspectFace*(this: OpenGlCappingPlaneResource): ptr OpenGlAspects {.noSideEffect,
    cdecl, importcpp: "AspectFace", dynlib: tkkxbase.}
proc orientation*(this: OpenGlCappingPlaneResource): ptr OpenGlMatrix {.noSideEffect,
    cdecl, importcpp: "Orientation", dynlib: tkkxbase.}
proc primitives*(this: OpenGlCappingPlaneResource): OpenGlPrimitiveArray {.
    noSideEffect, cdecl, importcpp: "Primitives", dynlib: tkkxbase.}