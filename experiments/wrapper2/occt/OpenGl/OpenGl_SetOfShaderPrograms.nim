##  Created on: 2014-10-08
##  Created by: Kirill Gavrilov
##  Copyright (c) 2014 OPEN CASCADE SAS
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
  ../Graphic3d/Graphic3d_TypeOfShadingModel, ../NCollection/NCollection_DataMap,
  OpenGl_ShaderProgram

## ! Standard GLSL program combination bits.

type
  OpenGl_ProgramOptions* {.size: sizeof(cint), importcpp: "OpenGl_ProgramOptions",
                          header: "OpenGl_SetOfShaderPrograms.hxx".} = enum
    OpenGl_PO_VertColor = 0x0001, ## !< per-vertex color
    OpenGl_PO_TextureRGB = 0x0002, ## !< handle RGB texturing
    OpenGl_PO_TextureEnv = 0x0004, ## !< handle environment map (obsolete, to be removed)
    OpenGl_PO_TextureNormal = OpenGl_PO_TextureRGB or OpenGl_PO_TextureEnv, ## !< extended texture set (with normal map)
    OpenGl_PO_PointSimple = 0x0008, ## !< point marker without sprite
    OpenGl_PO_PointSprite = 0x0010, ## !< point sprite with RGB image
    OpenGl_PO_PointSpriteA = OpenGl_PO_PointSimple or OpenGl_PO_PointSprite, ## !< point sprite with Alpha image
    OpenGl_PO_StippleLine = 0x0020, ## !< stipple line
    OpenGl_PO_ClipPlanes1 = 0x0040, ## !< handle 1 clipping plane
    OpenGl_PO_ClipPlanes2 = 0x0080, ## !< handle 2 clipping planes
    OpenGl_PO_ClipPlanesN = OpenGl_PO_ClipPlanes1 or OpenGl_PO_ClipPlanes2, ## !< handle N clipping planes
    OpenGl_PO_ClipChains = 0x0100, ## !< handle chains of clipping planes
    OpenGl_PO_MeshEdges = 0x0200, ## !< draw mesh edges (wireframe)
    OpenGl_PO_AlphaTest = 0x0400, ## !< discard fragment by alpha test (defined by cutoff value)
    OpenGl_PO_WriteOit = 0x0800, ## !< write coverage buffer for Blended Order-Independent Transparency
                              ##
    OpenGl_PO_NB = 0x1000,      ## !< overall number of combinations
    OpenGl_PO_IsPoint = OpenGl_PO_PointSimple or OpenGl_PO_PointSprite or
        OpenGl_PO_PointSpriteA,
    OpenGl_PO_HasTextures = OpenGl_PO_TextureRGB or OpenGl_PO_TextureEnv

const
  OpenGl_PO_NeedsGeomShader* = OpenGl_PO_MeshEdges

## ! Alias to programs array of predefined length

type
  OpenGl_SetOfPrograms* {.importcpp: "OpenGl_SetOfPrograms",
                         header: "OpenGl_SetOfShaderPrograms.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor
    ## !< programs array

  OpenGl_SetOfProgramsbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "OpenGl_SetOfPrograms::get_type_name(@)",
                              header: "OpenGl_SetOfShaderPrograms.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_SetOfPrograms::get_type_descriptor(@)",
    header: "OpenGl_SetOfShaderPrograms.hxx".}
proc DynamicType*(this: OpenGl_SetOfPrograms): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_SetOfShaderPrograms.hxx".}
proc constructOpenGl_SetOfPrograms*(): OpenGl_SetOfPrograms {.constructor,
    importcpp: "OpenGl_SetOfPrograms(@)", header: "OpenGl_SetOfShaderPrograms.hxx".}
proc ChangeValue*(this: var OpenGl_SetOfPrograms; theProgramBits: Standard_Integer): var handle[
    OpenGl_ShaderProgram] {.importcpp: "ChangeValue",
                           header: "OpenGl_SetOfShaderPrograms.hxx".}
## ! Alias to 2D programs array of predefined length

type
  OpenGl_SetOfShaderPrograms* {.importcpp: "OpenGl_SetOfShaderPrograms",
                               header: "OpenGl_SetOfShaderPrograms.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor
    ## !< programs array, excluding Graphic3d_TOSM_UNLIT

  OpenGl_SetOfShaderProgramsbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "OpenGl_SetOfShaderPrograms::get_type_name(@)",
                              header: "OpenGl_SetOfShaderPrograms.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_SetOfShaderPrograms::get_type_descriptor(@)",
    header: "OpenGl_SetOfShaderPrograms.hxx".}
proc DynamicType*(this: OpenGl_SetOfShaderPrograms): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "OpenGl_SetOfShaderPrograms.hxx".}
proc constructOpenGl_SetOfShaderPrograms*(): OpenGl_SetOfShaderPrograms {.
    constructor, importcpp: "OpenGl_SetOfShaderPrograms(@)",
    header: "OpenGl_SetOfShaderPrograms.hxx".}
proc constructOpenGl_SetOfShaderPrograms*(
    thePrograms: handle[OpenGl_SetOfPrograms]): OpenGl_SetOfShaderPrograms {.
    constructor, importcpp: "OpenGl_SetOfShaderPrograms(@)",
    header: "OpenGl_SetOfShaderPrograms.hxx".}
proc ChangeValue*(this: var OpenGl_SetOfShaderPrograms;
                 theShadingModel: Graphic3d_TypeOfShadingModel;
                 theProgramBits: Standard_Integer): var handle[OpenGl_ShaderProgram] {.
    importcpp: "ChangeValue", header: "OpenGl_SetOfShaderPrograms.hxx".}
type
  OpenGl_MapOfShaderPrograms* = NCollection_DataMap[TCollection_AsciiString,
      handle[OpenGl_SetOfShaderPrograms]]
