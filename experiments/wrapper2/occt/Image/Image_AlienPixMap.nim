##  Created on: 2012-07-18
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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
  Image_PixMap

discard "forward decl of TCollection_AsciiString"
discard "forward decl of FIBITMAP"
type
  Image_AlienPixMap* {.importcpp: "Image_AlienPixMap",
                      header: "Image_AlienPixMap.hxx", bycopy.} = object of Image_PixMap ##
                                                                                  ## !
                                                                                  ## Return
                                                                                  ## default
                                                                                  ## rows
                                                                                  ## order
                                                                                  ## used
                                                                                  ## by
                                                                                  ## underlying
                                                                                  ## image
                                                                                  ## library.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Copying
                                                                                  ## allowed
                                                                                  ## only
                                                                                  ## within
                                                                                  ## Handles

  Image_AlienPixMapbase_type* = Image_PixMap

proc get_type_name*(): cstring {.importcpp: "Image_AlienPixMap::get_type_name(@)",
                              header: "Image_AlienPixMap.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Image_AlienPixMap::get_type_descriptor(@)",
    header: "Image_AlienPixMap.hxx".}
proc DynamicType*(this: Image_AlienPixMap): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Image_AlienPixMap.hxx".}
proc IsTopDownDefault*(): bool {.importcpp: "Image_AlienPixMap::IsTopDownDefault(@)",
                              header: "Image_AlienPixMap.hxx".}
proc constructImage_AlienPixMap*(): Image_AlienPixMap {.constructor,
    importcpp: "Image_AlienPixMap(@)", header: "Image_AlienPixMap.hxx".}
proc destroyImage_AlienPixMap*(this: var Image_AlienPixMap) {.
    importcpp: "#.~Image_AlienPixMap()", header: "Image_AlienPixMap.hxx".}
proc Load*(this: var Image_AlienPixMap; theFileName: TCollection_AsciiString): bool {.
    importcpp: "Load", header: "Image_AlienPixMap.hxx".}
proc Load*(this: var Image_AlienPixMap; theStream: var istream;
          theFileName: TCollection_AsciiString): bool {.importcpp: "Load",
    header: "Image_AlienPixMap.hxx".}
proc Load*(this: var Image_AlienPixMap; theData: ptr Standard_Byte;
          theLength: Standard_Size; theFileName: TCollection_AsciiString): bool {.
    importcpp: "Load", header: "Image_AlienPixMap.hxx".}
proc Save*(this: var Image_AlienPixMap; theFileName: TCollection_AsciiString): bool {.
    importcpp: "Save", header: "Image_AlienPixMap.hxx".}
proc InitTrash*(this: var Image_AlienPixMap; thePixelFormat: Image_Format;
               theSizeX: Standard_Size; theSizeY: Standard_Size;
               theSizeRowBytes: Standard_Size = 0): bool {.importcpp: "InitTrash",
    header: "Image_AlienPixMap.hxx".}
proc InitCopy*(this: var Image_AlienPixMap; theCopy: Image_PixMap): bool {.
    importcpp: "InitCopy", header: "Image_AlienPixMap.hxx".}
proc Clear*(this: var Image_AlienPixMap) {.importcpp: "Clear",
                                       header: "Image_AlienPixMap.hxx".}
proc AdjustGamma*(this: var Image_AlienPixMap; theGammaCorr: Standard_Real): bool {.
    importcpp: "AdjustGamma", header: "Image_AlienPixMap.hxx".}
discard "forward decl of Image_AlienPixMap"
type
  Handle_Image_AlienPixMap* = handle[Image_AlienPixMap]
