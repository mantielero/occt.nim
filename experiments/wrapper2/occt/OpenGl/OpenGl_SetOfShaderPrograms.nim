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

## ! Standard GLSL program combination bits.

type
  OpenGlProgramOptions* {.size: sizeof(cint), importcpp: "OpenGl_ProgramOptions",
                         header: "OpenGl_SetOfShaderPrograms.hxx".} = enum
    OpenGlPO_VertColor = 0x0001, ## !< per-vertex color
    OpenGlPO_TextureRGB = 0x0002, ## !< handle RGB texturing
    OpenGlPO_TextureEnv = 0x0004, ## !< handle environment map (obsolete, to be removed)
    OpenGlPO_TextureNormal = openGlPO_TextureRGB or openGlPO_TextureEnv, ## !< extended texture set (with normal map)
    OpenGlPO_PointSimple = 0x0008, ## !< point marker without sprite
    OpenGlPO_PointSprite = 0x0010, ## !< point sprite with RGB image
    OpenGlPO_PointSpriteA = openGlPO_PointSimple or openGlPO_PointSprite, ## !< point sprite with Alpha image
    OpenGlPO_StippleLine = 0x0020, ## !< stipple line
    OpenGlPO_ClipPlanes1 = 0x0040, ## !< handle 1 clipping plane
    OpenGlPO_ClipPlanes2 = 0x0080, ## !< handle 2 clipping planes
    OpenGlPO_ClipPlanesN = openGlPO_ClipPlanes1 or openGlPO_ClipPlanes2, ## !< handle N clipping planes
    OpenGlPO_ClipChains = 0x0100, ## !< handle chains of clipping planes
    OpenGlPO_MeshEdges = 0x0200, ## !< draw mesh edges (wireframe)
    OpenGlPO_AlphaTest = 0x0400, ## !< discard fragment by alpha test (defined by cutoff value)
    OpenGlPO_WriteOit = 0x0800, ## !< write coverage buffer for Blended Order-Independent Transparency
                             ##
    OpenGlPO_NB = 0x1000,       ## !< overall number of combinations
    OpenGlPO_IsPoint = openGlPO_PointSimple or openGlPO_PointSprite or
        openGlPO_PointSpriteA,
    OpenGlPO_HasTextures = openGlPO_TextureRGB or openGlPO_TextureEnv,
    OpenGlPO_NeedsGeomShader = openGlPO_MeshEdges


## ! Alias to programs array of predefined length

type
  OpenGlSetOfPrograms* {.importcpp: "OpenGl_SetOfPrograms",
                        header: "OpenGl_SetOfShaderPrograms.hxx", bycopy.} = object of StandardTransient

  OpenGlSetOfProgramsbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "OpenGl_SetOfPrograms::get_type_name(@)",
                            header: "OpenGl_SetOfShaderPrograms.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) { return Standard_Type :: Instance < OpenGl_SetOfPrograms > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } public : ! Empty constructor OpenGl_SetOfPrograms ( ) { } ! Access program by index Handle ( OpenGl_ShaderProgram ) & ChangeValue ( Standard_Integer theProgramBits ) { return myPrograms [ theProgramBits ] ; } protected : Handle ( OpenGl_ShaderProgram ) myPrograms [ OpenGl_PO_NB ] ;
## Error: identifier expected, but got: &!!!

## ! Alias to 2D programs array of predefined length

type
  OpenGlSetOfShaderPrograms* {.importcpp: "OpenGl_SetOfShaderPrograms",
                              header: "OpenGl_SetOfShaderPrograms.hxx", bycopy.} = object of StandardTransient

  OpenGlSetOfShaderProgramsbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "OpenGl_SetOfShaderPrograms::get_type_name(@)",
                            header: "OpenGl_SetOfShaderPrograms.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) { return Standard_Type :: Instance < OpenGl_SetOfShaderPrograms > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } public : ! Empty constructor OpenGl_SetOfShaderPrograms ( ) { } ! Constructor OpenGl_SetOfShaderPrograms ( const Handle ( OpenGl_SetOfPrograms ) & thePrograms ) { for ( Standard_Integer aSetIter = 0 ; aSetIter < Graphic3d_TypeOfShadingModel_NB - 1 ; ++ aSetIter ) { myPrograms [ aSetIter ] = thePrograms ; } } ! Access program by index Handle ( OpenGl_ShaderProgram ) & ChangeValue ( Graphic3d_TypeOfShadingModel theShadingModel , Standard_Integer theProgramBits ) { Handle ( OpenGl_SetOfPrograms ) & aSet = myPrograms [ theShadingModel - 1 ] ; if ( aSet . IsNull ( ) ) { aSet = new OpenGl_SetOfPrograms ( ) ; } return aSet -> ChangeValue ( theProgramBits ) ; } protected : Handle ( OpenGl_SetOfPrograms ) myPrograms [ Graphic3d_TypeOfShadingModel_NB - 1 ] ;
## Error: identifier expected, but got: &!!!

type
  OpenGlMapOfShaderPrograms* = NCollectionDataMap[TCollectionAsciiString,
      proc (a1: OpenGlSetOfShaderPrograms): Handle]














































