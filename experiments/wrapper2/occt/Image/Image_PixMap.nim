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

## ! Class represents packed image plane.

type
  ImagePixMap* {.importcpp: "Image_PixMap", header: "Image_PixMap.hxx", bycopy.} = object of StandardTransient ##
                                                                                                     ## !
                                                                                                     ## Determine
                                                                                                     ## Big-Endian
                                                                                                     ## at
                                                                                                     ## runtime
                                                                                                     ##
                                                                                                     ## high-level
                                                                                                     ## API
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @name
                                                                                                     ## low-level
                                                                                                     ## API
                                                                                                     ## for
                                                                                                     ## batch-processing
                                                                                                     ## (pixels
                                                                                                     ## reading
                                                                                                     ## /
                                                                                                     ## comparison
                                                                                                     ## /
                                                                                                     ## modification)
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## TRUE
                                                                                                     ## if
                                                                                                     ## image
                                                                                                     ## data
                                                                                                     ## is
                                                                                                     ## stored
                                                                                                     ## from
                                                                                                     ## Top
                                                                                                     ## to
                                                                                                     ## the
                                                                                                     ## Down.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## By
                                                                                                     ## default
                                                                                                     ## Bottom
                                                                                                     ## Up
                                                                                                     ## order
                                                                                                     ## is
                                                                                                     ## used
                                                                                                     ## instead
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## (topmost
                                                                                                     ## scanlines
                                                                                                     ## starts
                                                                                                     ## from
                                                                                                     ## the
                                                                                                     ## bottom
                                                                                                     ## in
                                                                                                     ## memory).
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## which
                                                                                                     ## is
                                                                                                     ## most
                                                                                                     ## image
                                                                                                     ## frameworks
                                                                                                     ## naturally
                                                                                                     ## support.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Notice
                                                                                                     ## that
                                                                                                     ## access
                                                                                                     ## methods
                                                                                                     ## within
                                                                                                     ## this
                                                                                                     ## class
                                                                                                     ## automatically
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## convert
                                                                                                     ## input
                                                                                                     ## row-index
                                                                                                     ## to
                                                                                                     ## apply
                                                                                                     ## this
                                                                                                     ## flag!
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## You
                                                                                                     ## should
                                                                                                     ## use
                                                                                                     ## this
                                                                                                     ## flag
                                                                                                     ## only
                                                                                                     ## if
                                                                                                     ## interconnect
                                                                                                     ## with
                                                                                                     ## alien
                                                                                                     ## APIs
                                                                                                     ## and
                                                                                                     ## buffers.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @return
                                                                                                     ## true
                                                                                                     ## if
                                                                                                     ## image
                                                                                                     ## data
                                                                                                     ## is
                                                                                                     ## top-down
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Copying
                                                                                                     ## allowed
                                                                                                     ## only
                                                                                                     ## within
                                                                                                     ## Handles
    ## !< data buffer
    ## !< pixel format

  ImagePixMapbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Image_PixMap::get_type_name(@)",
                            header: "Image_PixMap.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Image_PixMap::get_type_descriptor(@)", header: "Image_PixMap.hxx".}
proc dynamicType*(this: ImagePixMap): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Image_PixMap.hxx".}
proc isBigEndianHost*(): bool {.importcpp: "Image_PixMap::IsBigEndianHost(@)",
                             header: "Image_PixMap.hxx".}
proc swapRgbaBgra*(theImage: var ImagePixMap): bool {.
    importcpp: "Image_PixMap::SwapRgbaBgra(@)", header: "Image_PixMap.hxx".}
proc toBlackWhite*(theImage: var ImagePixMap) {.
    importcpp: "Image_PixMap::ToBlackWhite(@)", header: "Image_PixMap.hxx".}
proc defaultAllocator*(): Handle[NCollectionBaseAllocator] {.
    importcpp: "Image_PixMap::DefaultAllocator(@)", header: "Image_PixMap.hxx".}
proc format*(this: ImagePixMap): ImageFormat {.noSideEffect, importcpp: "Format",
    header: "Image_PixMap.hxx".}
proc setFormat*(this: var ImagePixMap; thePixelFormat: ImageFormat) {.
    importcpp: "SetFormat", header: "Image_PixMap.hxx".}
proc width*(this: ImagePixMap): StandardSize {.noSideEffect, importcpp: "Width",
    header: "Image_PixMap.hxx".}
proc height*(this: ImagePixMap): StandardSize {.noSideEffect, importcpp: "Height",
    header: "Image_PixMap.hxx".}
proc sizeX*(this: ImagePixMap): StandardSize {.noSideEffect, importcpp: "SizeX",
    header: "Image_PixMap.hxx".}
proc sizeY*(this: ImagePixMap): StandardSize {.noSideEffect, importcpp: "SizeY",
    header: "Image_PixMap.hxx".}
proc ratio*(this: ImagePixMap): float {.noSideEffect, importcpp: "Ratio",
                                    header: "Image_PixMap.hxx".}
proc isEmpty*(this: ImagePixMap): bool {.noSideEffect, importcpp: "IsEmpty",
                                     header: "Image_PixMap.hxx".}
proc constructImagePixMap*(): ImagePixMap {.constructor,
    importcpp: "Image_PixMap(@)", header: "Image_PixMap.hxx".}
proc destroyImagePixMap*(this: var ImagePixMap) {.importcpp: "#.~Image_PixMap()",
    header: "Image_PixMap.hxx".}
proc pixelColor*(this: ImagePixMap; theX: int; theY: int; theToLinearize: bool = false): QuantityColorRGBA {.
    noSideEffect, importcpp: "PixelColor", header: "Image_PixMap.hxx".}
proc setPixelColor*(this: var ImagePixMap; theX: int; theY: int;
                   theColor: QuantityColor; theToDeLinearize: bool = false) {.
    importcpp: "SetPixelColor", header: "Image_PixMap.hxx".}
proc setPixelColor*(this: var ImagePixMap; theX: int; theY: int;
                   theColor: QuantityColorRGBA; theToDeLinearize: bool = false) {.
    importcpp: "SetPixelColor", header: "Image_PixMap.hxx".}
proc initWrapper*(this: var ImagePixMap; thePixelFormat: ImageFormat;
                 theDataPtr: ptr StandardByte; theSizeX: StandardSize;
                 theSizeY: StandardSize; theSizeRowBytes: StandardSize = 0): bool {.
    importcpp: "InitWrapper", header: "Image_PixMap.hxx".}
proc initTrash*(this: var ImagePixMap; thePixelFormat: ImageFormat;
               theSizeX: StandardSize; theSizeY: StandardSize;
               theSizeRowBytes: StandardSize = 0): bool {.importcpp: "InitTrash",
    header: "Image_PixMap.hxx".}
proc initCopy*(this: var ImagePixMap; theCopy: ImagePixMap): bool {.
    importcpp: "InitCopy", header: "Image_PixMap.hxx".}
proc initZero*(this: var ImagePixMap; thePixelFormat: ImageFormat;
              theSizeX: StandardSize; theSizeY: StandardSize;
              theSizeRowBytes: StandardSize = 0; theValue: StandardByte = 0): bool {.
    importcpp: "InitZero", header: "Image_PixMap.hxx".}
proc clear*(this: var ImagePixMap) {.importcpp: "Clear", header: "Image_PixMap.hxx".}
proc isTopDown*(this: ImagePixMap): bool {.noSideEffect, importcpp: "IsTopDown",
                                       header: "Image_PixMap.hxx".}
proc setTopDown*(this: var ImagePixMap; theIsTopDown: bool) {.importcpp: "SetTopDown",
    header: "Image_PixMap.hxx".}
proc topDownInc*(this: ImagePixMap): StandardSize {.noSideEffect,
    importcpp: "TopDownInc", header: "Image_PixMap.hxx".}
proc data*(this: ImagePixMap): ptr StandardByte {.noSideEffect, importcpp: "Data",
    header: "Image_PixMap.hxx".}
proc changeData*(this: var ImagePixMap): ptr StandardByte {.importcpp: "ChangeData",
    header: "Image_PixMap.hxx".}
proc row*(this: ImagePixMap; theRow: StandardSize): ptr StandardByte {.noSideEffect,
    importcpp: "Row", header: "Image_PixMap.hxx".}
proc changeRow*(this: var ImagePixMap; theRow: StandardSize): ptr StandardByte {.
    importcpp: "ChangeRow", header: "Image_PixMap.hxx".}
proc sizePixelBytes*(this: ImagePixMap): StandardSize {.noSideEffect,
    importcpp: "SizePixelBytes", header: "Image_PixMap.hxx".}
proc sizePixelBytes*(thePixelFormat: ImageFormat): StandardSize {.
    importcpp: "Image_PixMap::SizePixelBytes(@)", header: "Image_PixMap.hxx".}
proc sizeRowBytes*(this: ImagePixMap): StandardSize {.noSideEffect,
    importcpp: "SizeRowBytes", header: "Image_PixMap.hxx".}
proc rowExtraBytes*(this: ImagePixMap): StandardSize {.noSideEffect,
    importcpp: "RowExtraBytes", header: "Image_PixMap.hxx".}
proc maxRowAligmentBytes*(this: ImagePixMap): StandardSize {.noSideEffect,
    importcpp: "MaxRowAligmentBytes", header: "Image_PixMap.hxx".}
proc sizeBytes*(this: ImagePixMap): StandardSize {.noSideEffect,
    importcpp: "SizeBytes", header: "Image_PixMap.hxx".}
proc value*[ColorTypeT](this: ImagePixMap; theRow: StandardSize; theCol: StandardSize): ColorTypeT {.
    noSideEffect, importcpp: "Value", header: "Image_PixMap.hxx".}
proc changeValue*[ColorTypeT](this: var ImagePixMap; theRow: StandardSize;
                             theCol: StandardSize): var ColorTypeT {.
    importcpp: "ChangeValue", header: "Image_PixMap.hxx".}
proc rawValue*(this: ImagePixMap; theRow: StandardSize; theCol: StandardSize): ptr StandardByte {.
    noSideEffect, importcpp: "RawValue", header: "Image_PixMap.hxx".}
proc changeRawValue*(this: var ImagePixMap; theRow: StandardSize; theCol: StandardSize): ptr StandardByte {.
    importcpp: "ChangeRawValue", header: "Image_PixMap.hxx".}
## !!!Ignored construct:  public : Standard_DEPRECATED ( This member is deprecated, use Image_Format enumeration instead ) typedef Image_Format ImgFormat ;
## Error: identifier expected, but got: This member is deprecated, use Image_Format enumeration instead!!!

discard "forward decl of Image_PixMap"
type
  HandleImagePixMap* = Handle[ImagePixMap]

