##  Created on: 1997-07-28
##  Created by: Pierre CHALAMET
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Image/Image_PixMap, ../OSD/OSD_Path, Graphic3d_TypeOfTexture,
  ../Standard/Standard, ../Standard/Standard_Transient, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString

discard "forward decl of Image_CompressedPixMap"
discard "forward decl of Image_SupportedFormats"
discard "forward decl of Graphic3d_TextureParams"
type
  Graphic3d_TextureRoot* {.importcpp: "Graphic3d_TextureRoot",
                          header: "Graphic3d_TextureRoot.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## The
                                                                                                ## path
                                                                                                ## to
                                                                                                ## textures
                                                                                                ## determined
                                                                                                ## from
                                                                                                ## CSF_MDTVTexturesDirectory
                                                                                                ## or
                                                                                                ## CASROOT
                                                                                                ## environment
                                                                                                ## variables.
                                                                                                ##
                                                                                                ## !
                                                                                                ## @return
                                                                                                ## the
                                                                                                ## root
                                                                                                ## folder
                                                                                                ## with
                                                                                                ## default
                                                                                                ## textures.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Destructor.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## texture
                                                                                                ## from
                                                                                                ## a
                                                                                                ## file
                                                                                                ##
                                                                                                ## !
                                                                                                ## Warning:
                                                                                                ## Note
                                                                                                ## that
                                                                                                ## if
                                                                                                ## <FileName>
                                                                                                ## is
                                                                                                ## NULL
                                                                                                ## the
                                                                                                ## texture
                                                                                                ## must
                                                                                                ## be
                                                                                                ## realized
                                                                                                ##
                                                                                                ## !
                                                                                                ## using
                                                                                                ## LoadTexture(image)
                                                                                                ## method.
    ## !< associated texture parameters
    ## !< unique identifier of this resource (for sharing graphic resource); should never be modified outside constructor
    ## !< image pixmap - as one of the ways for defining the texture source
    ## !< image file path - as one of the ways for defining the texture source
    ## !< image revision - for signaling changes in the texture source (e.g. file update, pixmap update)
    ## !< texture type
    ## !< flag indicating color nature of values within the texture
    ## !< Stores rows's memory layout

  Graphic3d_TextureRootbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_TextureRoot::get_type_name(@)",
                              header: "Graphic3d_TextureRoot.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_TextureRoot::get_type_descriptor(@)",
    header: "Graphic3d_TextureRoot.hxx".}
proc DynamicType*(this: Graphic3d_TextureRoot): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_TextureRoot.hxx".}
proc TexturesFolder*(): TCollection_AsciiString {.
    importcpp: "Graphic3d_TextureRoot::TexturesFolder(@)",
    header: "Graphic3d_TextureRoot.hxx".}
proc destroyGraphic3d_TextureRoot*(this: var Graphic3d_TextureRoot) {.
    importcpp: "#.~Graphic3d_TextureRoot()", header: "Graphic3d_TextureRoot.hxx".}
proc IsDone*(this: Graphic3d_TextureRoot): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Graphic3d_TextureRoot.hxx".}
proc Path*(this: Graphic3d_TextureRoot): OSD_Path {.noSideEffect, importcpp: "Path",
    header: "Graphic3d_TextureRoot.hxx".}
proc Type*(this: Graphic3d_TextureRoot): Graphic3d_TypeOfTexture {.noSideEffect,
    importcpp: "Type", header: "Graphic3d_TextureRoot.hxx".}
proc GetId*(this: Graphic3d_TextureRoot): TCollection_AsciiString {.noSideEffect,
    importcpp: "GetId", header: "Graphic3d_TextureRoot.hxx".}
proc Revision*(this: Graphic3d_TextureRoot): Standard_Size {.noSideEffect,
    importcpp: "Revision", header: "Graphic3d_TextureRoot.hxx".}
proc UpdateRevision*(this: var Graphic3d_TextureRoot) {.importcpp: "UpdateRevision",
    header: "Graphic3d_TextureRoot.hxx".}
proc GetCompressedImage*(this: var Graphic3d_TextureRoot;
                        theSupported: handle[Image_SupportedFormats]): handle[
    Image_CompressedPixMap] {.importcpp: "GetCompressedImage",
                             header: "Graphic3d_TextureRoot.hxx".}
proc GetImage*(this: var Graphic3d_TextureRoot;
              theSupported: handle[Image_SupportedFormats]): handle[Image_PixMap] {.
    importcpp: "GetImage", header: "Graphic3d_TextureRoot.hxx".}
proc GetParams*(this: Graphic3d_TextureRoot): handle[Graphic3d_TextureParams] {.
    noSideEffect, importcpp: "GetParams", header: "Graphic3d_TextureRoot.hxx".}
proc IsColorMap*(this: Graphic3d_TextureRoot): Standard_Boolean {.noSideEffect,
    importcpp: "IsColorMap", header: "Graphic3d_TextureRoot.hxx".}
proc SetColorMap*(this: var Graphic3d_TextureRoot; theIsColor: Standard_Boolean) {.
    importcpp: "SetColorMap", header: "Graphic3d_TextureRoot.hxx".}
proc IsTopDown*(this: Graphic3d_TextureRoot): Standard_Boolean {.noSideEffect,
    importcpp: "IsTopDown", header: "Graphic3d_TextureRoot.hxx".}
discard "forward decl of Graphic3d_TextureRoot"
type
  Handle_Graphic3d_TextureRoot* = handle[Graphic3d_TextureRoot]
