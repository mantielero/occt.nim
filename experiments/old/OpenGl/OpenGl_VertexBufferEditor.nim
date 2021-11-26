##  Created by: Kirill GAVRILOV
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

## ! Auxiliary class to iteratively modify data of existing VBO.
## ! It provides iteration interface with delayed CPU->GPU memory transfer to avoid slow per-element data transfer.
## ! User should explicitly call Flush() method to ensure that all data is transferred to VBO.
## ! Temporary buffer on CPU side can be initialized with lesser capacity than  VBO
## ! to allow re-usage of shared buffer with fixed size between VBOs.
## !
## ! You should use NCollection_Vec2/NCollection_Vec3/NCollection_Vec4 with appropriate length
## ! to instantiate this template and access elements in VBO.
## !
## ! Notice that this technique designed for VBO streaming scenarios (when VBO is modified from time to time).
## ! Also this class doesn't retrieve existing data from VBO - data transferred only in one direction!
## ! In case of static data this is preferred to upload it within one call during VBO initialization.

type
  OpenGlVertexBufferEditor*[TheVecT] {.importcpp: "OpenGl_VertexBufferEditor<\'0>",
                                      header: "OpenGl_VertexBufferEditor.hxx",
                                      bycopy.} = object ## ! Creates empty editor
                                                     ## ! theTmpBufferLength - temporary buffer length
    ## !< handle to current OpenGL context
    ## !< edited VBO
    ## !< element in VBO to upload from
    ## !< current element in temporary buffer
    ## !< temporary array


proc constructOpenGlVertexBufferEditor*[TheVecT](theTmpBufferLength: cint = 0): OpenGlVertexBufferEditor[
    TheVecT] {.constructor, importcpp: "OpenGl_VertexBufferEditor<\'*0>(@)",
              header: "OpenGl_VertexBufferEditor.hxx".}
proc constructOpenGlVertexBufferEditor*[TheVecT](theTmpBuffer: ptr TheVecT;
    theTmpBufferLength: cint): OpenGlVertexBufferEditor[TheVecT] {.constructor,
    importcpp: "OpenGl_VertexBufferEditor<\'*0>(@)",
    header: "OpenGl_VertexBufferEditor.hxx".}
proc init*[TheVecT](this: var OpenGlVertexBufferEditor[TheVecT];
                   theGlCtx: Handle[OpenGlContext];
                   theVbo: Handle[OpenGlVertexBuffer]): bool {.importcpp: "Init",
    header: "OpenGl_VertexBufferEditor.hxx".}
proc value*[TheVecT](this: var OpenGlVertexBufferEditor[TheVecT]): var TheVecT {.
    importcpp: "Value", header: "OpenGl_VertexBufferEditor.hxx".}
proc next*[TheVecT](this: var OpenGlVertexBufferEditor[TheVecT]): bool {.
    importcpp: "Next", header: "OpenGl_VertexBufferEditor.hxx".}
proc flush*[TheVecT](this: var OpenGlVertexBufferEditor[TheVecT]): bool {.
    importcpp: "Flush", header: "OpenGl_VertexBufferEditor.hxx".}
proc getVBO*[TheVecT](this: OpenGlVertexBufferEditor[TheVecT]): Handle[
    OpenGlVertexBuffer] {.noSideEffect, importcpp: "GetVBO",
                         header: "OpenGl_VertexBufferEditor.hxx".}

























