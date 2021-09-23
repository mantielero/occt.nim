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

import
  OpenGl_PrimitiveArray, OpenGl_Resource, OpenGl_Aspects, OpenGl_Matrix,
  ../Graphic3d/Graphic3d_ClipPlane

discard "forward decl of OpenGl_CappingPlaneResource"
discard "forward decl of OpenGl_CappingPlaneResource"
type
  Handle_OpenGl_CappingPlaneResource* = handle[OpenGl_CappingPlaneResource]

## ! Container of graphical resources for rendering capping plane
## ! associated to graphical clipping plane.
## ! This resource holds data necessary for OpenGl_CappingAlgo.
## ! This object is implemented as OpenGl resource for the following reasons:
## ! - one instance should be shared between contexts.
## ! - instance associated to Graphic3d_ClipPlane data by id.
## ! - should created and released within context (owns OpenGl elements and resources).

type
  OpenGl_CappingPlaneResource* {.importcpp: "OpenGl_CappingPlaneResource",
                                header: "OpenGl_CappingPlaneResource.hxx", bycopy.} = object of OpenGl_Resource ##
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


proc constructOpenGl_CappingPlaneResource*(thePlane: handle[Graphic3d_ClipPlane]): OpenGl_CappingPlaneResource {.
    constructor, importcpp: "OpenGl_CappingPlaneResource(@)",
    header: "OpenGl_CappingPlaneResource.hxx".}
proc destroyOpenGl_CappingPlaneResource*(this: var OpenGl_CappingPlaneResource) {.
    importcpp: "#.~OpenGl_CappingPlaneResource()",
    header: "OpenGl_CappingPlaneResource.hxx".}
proc Update*(this: var OpenGl_CappingPlaneResource;
            theContext: handle[OpenGl_Context];
            theObjAspect: handle[Graphic3d_Aspects]) {.importcpp: "Update",
    header: "OpenGl_CappingPlaneResource.hxx".}
proc Release*(this: var OpenGl_CappingPlaneResource; theContext: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_CappingPlaneResource.hxx".}
proc EstimatedDataSize*(this: OpenGl_CappingPlaneResource): Standard_Size {.
    noSideEffect, importcpp: "EstimatedDataSize",
    header: "OpenGl_CappingPlaneResource.hxx".}
proc Plane*(this: OpenGl_CappingPlaneResource): handle[Graphic3d_ClipPlane] {.
    noSideEffect, importcpp: "Plane", header: "OpenGl_CappingPlaneResource.hxx".}
proc AspectFace*(this: OpenGl_CappingPlaneResource): ptr OpenGl_Aspects {.
    noSideEffect, importcpp: "AspectFace",
    header: "OpenGl_CappingPlaneResource.hxx".}
proc Orientation*(this: OpenGl_CappingPlaneResource): ptr OpenGl_Matrix {.
    noSideEffect, importcpp: "Orientation",
    header: "OpenGl_CappingPlaneResource.hxx".}
proc Primitives*(this: OpenGl_CappingPlaneResource): OpenGl_PrimitiveArray {.
    noSideEffect, importcpp: "Primitives",
    header: "OpenGl_CappingPlaneResource.hxx".}
type
  OpenGl_CappingPlaneResourcebase_type* = OpenGl_Resource

proc get_type_name*(): cstring {.importcpp: "OpenGl_CappingPlaneResource::get_type_name(@)",
                              header: "OpenGl_CappingPlaneResource.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_CappingPlaneResource::get_type_descriptor(@)",
    header: "OpenGl_CappingPlaneResource.hxx".}
proc DynamicType*(this: OpenGl_CappingPlaneResource): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "OpenGl_CappingPlaneResource.hxx".}