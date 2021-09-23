##  Author: Ilya Khramov
##  Copyright (c) 2019 OPEN CASCADE SAS
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
  OpenGl_Texture, OpenGl_VertexBuffer

## ! This class contains specular and diffuse maps required for Image Base Lighting (IBL) in PBR shading model with it's generation methods.

type
  OpenGl_PBREnvironment* {.importcpp: "OpenGl_PBREnvironment",
                          header: "OpenGl_PBREnvironment.hxx", bycopy.} = object of OpenGl_NamedResource ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## and
                                                                                                  ## initializes
                                                                                                  ## new
                                                                                                  ## PBR
                                                                                                  ## environment.
                                                                                                  ## It
                                                                                                  ## is
                                                                                                  ## the
                                                                                                  ## only
                                                                                                  ## way
                                                                                                  ## to
                                                                                                  ## create
                                                                                                  ## OpenGl_PBREnvironment.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theCtx
                                                                                                  ## OpenGL
                                                                                                  ## context
                                                                                                  ## where
                                                                                                  ## environment
                                                                                                  ## will
                                                                                                  ## be
                                                                                                  ## created
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## thePow2Size
                                                                                                  ## final
                                                                                                  ## size
                                                                                                  ## of
                                                                                                  ## texture's
                                                                                                  ## sides
                                                                                                  ## can
                                                                                                  ## be
                                                                                                  ## calculated
                                                                                                  ## as
                                                                                                  ## 2^thePow2Size;
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## if
                                                                                                  ## thePow2Size
                                                                                                  ## less
                                                                                                  ## than
                                                                                                  ## 1
                                                                                                  ## it
                                                                                                  ## will
                                                                                                  ## be
                                                                                                  ## set
                                                                                                  ## to
                                                                                                  ## 1
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theSpecMapLevelsNum
                                                                                                  ## number
                                                                                                  ## of
                                                                                                  ## mipmap
                                                                                                  ## levels
                                                                                                  ## used
                                                                                                  ## in
                                                                                                  ## specular
                                                                                                  ## IBL
                                                                                                  ## map;
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## if
                                                                                                  ## theSpecMapLevelsNum
                                                                                                  ## less
                                                                                                  ## than
                                                                                                  ## 2
                                                                                                  ## or
                                                                                                  ## less
                                                                                                  ## than
                                                                                                  ## Pow2Size
                                                                                                  ## +
                                                                                                  ## 1
                                                                                                  ## it
                                                                                                  ## will
                                                                                                  ## be
                                                                                                  ## set
                                                                                                  ## to
                                                                                                  ## the
                                                                                                  ## corresponding
                                                                                                  ## values.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theId
                                                                                                  ## OpenGl_Resource
                                                                                                  ## name
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @return
                                                                                                  ## handle
                                                                                                  ## to
                                                                                                  ## created
                                                                                                  ## PBR
                                                                                                  ## environment
                                                                                                  ## or
                                                                                                  ## NULL
                                                                                                  ## handle
                                                                                                  ## in
                                                                                                  ## case
                                                                                                  ## of
                                                                                                  ## fail
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Binds
                                                                                                  ## diffuse
                                                                                                  ## and
                                                                                                  ## specular
                                                                                                  ## IBL
                                                                                                  ## maps
                                                                                                  ## to
                                                                                                  ## the
                                                                                                  ## corresponding
                                                                                                  ## texture
                                                                                                  ## units.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## new
                                                                                                  ## PBR
                                                                                                  ## environment.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Parameters
                                                                                                  ## and
                                                                                                  ## logic
                                                                                                  ## are
                                                                                                  ## described
                                                                                                  ## in
                                                                                                  ## 'Create'
                                                                                                  ## method
                                                                                                  ## documentation.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Enum
                                                                                                  ## classified
                                                                                                  ## the
                                                                                                  ## type
                                                                                                  ## of
                                                                                                  ## IBL
                                                                                                  ## map
    ## !< size of IBL maps sides (real size can be calculated as 2^myPow2Size)
    ## !< number of mipmap levels used in specular IBL map
    ## !< IBL maps
    ## !< vertex buffer object of screen rectangular
    ## !< frame buffer object to generate or clear IBL maps
    ## !< completeness of PBR environment
    ## !< indicates whether IBL map's textures have to be bound or it is not obligate

  OpenGl_PBREnvironmentbase_type* = OpenGl_NamedResource

proc get_type_name*(): cstring {.importcpp: "OpenGl_PBREnvironment::get_type_name(@)",
                              header: "OpenGl_PBREnvironment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_PBREnvironment::get_type_descriptor(@)",
    header: "OpenGl_PBREnvironment.hxx".}
proc DynamicType*(this: OpenGl_PBREnvironment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "OpenGl_PBREnvironment.hxx".}
proc Create*(theCtx: handle[OpenGl_Context]; thePow2Size: cuint = 9;
            theSpecMapLevelsNum: cuint = 6;
            theId: TCollection_AsciiString = "PBREnvironment"): handle[
    OpenGl_PBREnvironment] {.importcpp: "OpenGl_PBREnvironment::Create(@)",
                            header: "OpenGl_PBREnvironment.hxx".}
proc Bind*(this: var OpenGl_PBREnvironment; theCtx: handle[OpenGl_Context]) {.
    importcpp: "Bind", header: "OpenGl_PBREnvironment.hxx".}
proc Unbind*(this: var OpenGl_PBREnvironment; theCtx: handle[OpenGl_Context]) {.
    importcpp: "Unbind", header: "OpenGl_PBREnvironment.hxx".}
proc Clear*(this: var OpenGl_PBREnvironment; theCtx: handle[OpenGl_Context];
           theColor: Graphic3d_Vec3 = Graphic3d_Vec3(1.f)) {.importcpp: "Clear",
    header: "OpenGl_PBREnvironment.hxx".}
proc Bake*(this: var OpenGl_PBREnvironment; theCtx: handle[OpenGl_Context];
          theEnvMap: handle[OpenGl_Texture];
          theZIsInverted: Standard_Boolean = Standard_False;
          theIsTopDown: Standard_Boolean = Standard_True;
          theDiffMapNbSamples: Standard_Size = 1024;
          theSpecMapNbSamples: Standard_Size = 256;
          theProbability: Standard_ShortReal = 0.99f) {.importcpp: "Bake",
    header: "OpenGl_PBREnvironment.hxx".}
proc SpecMapLevelsNumber*(this: OpenGl_PBREnvironment): cuint {.noSideEffect,
    importcpp: "SpecMapLevelsNumber", header: "OpenGl_PBREnvironment.hxx".}
proc Pow2Size*(this: OpenGl_PBREnvironment): cuint {.noSideEffect,
    importcpp: "Pow2Size", header: "OpenGl_PBREnvironment.hxx".}
proc SizesAreDifferent*(this: OpenGl_PBREnvironment; thePow2Size: cuint;
                       theSpecMapLevelsNumber: cuint): bool {.noSideEffect,
    importcpp: "SizesAreDifferent", header: "OpenGl_PBREnvironment.hxx".}
proc IsNeededToBeBound*(this: OpenGl_PBREnvironment): bool {.noSideEffect,
    importcpp: "IsNeededToBeBound", header: "OpenGl_PBREnvironment.hxx".}
proc Release*(this: var OpenGl_PBREnvironment; theCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_PBREnvironment.hxx".}
proc EstimatedDataSize*(this: OpenGl_PBREnvironment): Standard_Size {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_PBREnvironment.hxx".}
proc IsComplete*(this: OpenGl_PBREnvironment): Standard_Boolean {.noSideEffect,
    importcpp: "IsComplete", header: "OpenGl_PBREnvironment.hxx".}
proc destroyOpenGl_PBREnvironment*(this: var OpenGl_PBREnvironment) {.
    importcpp: "#.~OpenGl_PBREnvironment()", header: "OpenGl_PBREnvironment.hxx".}