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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of FIBITMAP"
type
  ImageAlienPixMap* {.importcpp: "Image_AlienPixMap",
                     header: "Image_AlienPixMap.hxx", bycopy.} = object of ImagePixMap ##
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

  ImageAlienPixMapbaseType* = ImagePixMap

proc getTypeName*(): cstring {.importcpp: "Image_AlienPixMap::get_type_name(@)",
                            header: "Image_AlienPixMap.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Image_AlienPixMap::get_type_descriptor(@)",
    header: "Image_AlienPixMap.hxx".}
proc dynamicType*(this: ImageAlienPixMap): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Image_AlienPixMap.hxx".}
proc isTopDownDefault*(): bool {.importcpp: "Image_AlienPixMap::IsTopDownDefault(@)",
                              header: "Image_AlienPixMap.hxx".}
proc constructImageAlienPixMap*(): ImageAlienPixMap {.constructor,
    importcpp: "Image_AlienPixMap(@)", header: "Image_AlienPixMap.hxx".}
proc destroyImageAlienPixMap*(this: var ImageAlienPixMap) {.
    importcpp: "#.~Image_AlienPixMap()", header: "Image_AlienPixMap.hxx".}
proc load*(this: var ImageAlienPixMap; theFileName: TCollectionAsciiString): bool {.
    importcpp: "Load", header: "Image_AlienPixMap.hxx".}
proc load*(this: var ImageAlienPixMap; theStream: var Istream;
          theFileName: TCollectionAsciiString): bool {.importcpp: "Load",
    header: "Image_AlienPixMap.hxx".}
proc load*(this: var ImageAlienPixMap; theData: ptr StandardByte;
          theLength: StandardSize; theFileName: TCollectionAsciiString): bool {.
    importcpp: "Load", header: "Image_AlienPixMap.hxx".}
proc save*(this: var ImageAlienPixMap; theFileName: TCollectionAsciiString): bool {.
    importcpp: "Save", header: "Image_AlienPixMap.hxx".}
proc initTrash*(this: var ImageAlienPixMap; thePixelFormat: ImageFormat;
               theSizeX: StandardSize; theSizeY: StandardSize;
               theSizeRowBytes: StandardSize = 0): bool {.importcpp: "InitTrash",
    header: "Image_AlienPixMap.hxx".}
proc initCopy*(this: var ImageAlienPixMap; theCopy: ImagePixMap): bool {.
    importcpp: "InitCopy", header: "Image_AlienPixMap.hxx".}
proc clear*(this: var ImageAlienPixMap) {.importcpp: "Clear",
                                      header: "Image_AlienPixMap.hxx".}
proc adjustGamma*(this: var ImageAlienPixMap; theGammaCorr: float): bool {.
    importcpp: "AdjustGamma", header: "Image_AlienPixMap.hxx".}
discard "forward decl of Image_AlienPixMap"
type
  HandleImageAlienPixMap* = Handle[ImageAlienPixMap]

