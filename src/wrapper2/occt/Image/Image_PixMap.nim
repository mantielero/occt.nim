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
  Image_Format, Image_PixMapData, ../Standard/Standard_Transient,
  ../Quantity/Quantity_ColorRGBA

## ! Class represents packed image plane.

type
  Image_PixMap* {.importcpp: "Image_PixMap", header: "Image_PixMap.hxx", bycopy.} = object of Standard_Transient ##
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

  Image_PixMapbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Image_PixMap::get_type_name(@)",
                              header: "Image_PixMap.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Image_PixMap::get_type_descriptor(@)", header: "Image_PixMap.hxx".}
proc DynamicType*(this: Image_PixMap): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Image_PixMap.hxx".}
proc IsBigEndianHost*(): bool {.importcpp: "Image_PixMap::IsBigEndianHost(@)",
                             header: "Image_PixMap.hxx".}
proc SwapRgbaBgra*(theImage: var Image_PixMap): bool {.
    importcpp: "Image_PixMap::SwapRgbaBgra(@)", header: "Image_PixMap.hxx".}
proc ToBlackWhite*(theImage: var Image_PixMap) {.
    importcpp: "Image_PixMap::ToBlackWhite(@)", header: "Image_PixMap.hxx".}
proc DefaultAllocator*(): handle[NCollection_BaseAllocator] {.
    importcpp: "Image_PixMap::DefaultAllocator(@)", header: "Image_PixMap.hxx".}
proc Format*(this: Image_PixMap): Image_Format {.noSideEffect, importcpp: "Format",
    header: "Image_PixMap.hxx".}
proc SetFormat*(this: var Image_PixMap; thePixelFormat: Image_Format) {.
    importcpp: "SetFormat", header: "Image_PixMap.hxx".}
proc Width*(this: Image_PixMap): Standard_Size {.noSideEffect, importcpp: "Width",
    header: "Image_PixMap.hxx".}
proc Height*(this: Image_PixMap): Standard_Size {.noSideEffect, importcpp: "Height",
    header: "Image_PixMap.hxx".}
proc SizeX*(this: Image_PixMap): Standard_Size {.noSideEffect, importcpp: "SizeX",
    header: "Image_PixMap.hxx".}
proc SizeY*(this: Image_PixMap): Standard_Size {.noSideEffect, importcpp: "SizeY",
    header: "Image_PixMap.hxx".}
proc Ratio*(this: Image_PixMap): Standard_Real {.noSideEffect, importcpp: "Ratio",
    header: "Image_PixMap.hxx".}
proc IsEmpty*(this: Image_PixMap): bool {.noSideEffect, importcpp: "IsEmpty",
                                      header: "Image_PixMap.hxx".}
proc constructImage_PixMap*(): Image_PixMap {.constructor,
    importcpp: "Image_PixMap(@)", header: "Image_PixMap.hxx".}
proc destroyImage_PixMap*(this: var Image_PixMap) {.importcpp: "#.~Image_PixMap()",
    header: "Image_PixMap.hxx".}
proc PixelColor*(this: Image_PixMap; theX: Standard_Integer; theY: Standard_Integer;
                theToLinearize: Standard_Boolean = Standard_False): Quantity_ColorRGBA {.
    noSideEffect, importcpp: "PixelColor", header: "Image_PixMap.hxx".}
proc SetPixelColor*(this: var Image_PixMap; theX: Standard_Integer;
                   theY: Standard_Integer; theColor: Quantity_Color;
                   theToDeLinearize: Standard_Boolean = Standard_False) {.
    importcpp: "SetPixelColor", header: "Image_PixMap.hxx".}
proc SetPixelColor*(this: var Image_PixMap; theX: Standard_Integer;
                   theY: Standard_Integer; theColor: Quantity_ColorRGBA;
                   theToDeLinearize: Standard_Boolean = Standard_False) {.
    importcpp: "SetPixelColor", header: "Image_PixMap.hxx".}
proc InitWrapper*(this: var Image_PixMap; thePixelFormat: Image_Format;
                 theDataPtr: ptr Standard_Byte; theSizeX: Standard_Size;
                 theSizeY: Standard_Size; theSizeRowBytes: Standard_Size = 0): bool {.
    importcpp: "InitWrapper", header: "Image_PixMap.hxx".}
proc InitTrash*(this: var Image_PixMap; thePixelFormat: Image_Format;
               theSizeX: Standard_Size; theSizeY: Standard_Size;
               theSizeRowBytes: Standard_Size = 0): bool {.importcpp: "InitTrash",
    header: "Image_PixMap.hxx".}
proc InitCopy*(this: var Image_PixMap; theCopy: Image_PixMap): bool {.
    importcpp: "InitCopy", header: "Image_PixMap.hxx".}
proc InitZero*(this: var Image_PixMap; thePixelFormat: Image_Format;
              theSizeX: Standard_Size; theSizeY: Standard_Size;
              theSizeRowBytes: Standard_Size = 0; theValue: Standard_Byte = 0): bool {.
    importcpp: "InitZero", header: "Image_PixMap.hxx".}
proc Clear*(this: var Image_PixMap) {.importcpp: "Clear", header: "Image_PixMap.hxx".}
proc IsTopDown*(this: Image_PixMap): bool {.noSideEffect, importcpp: "IsTopDown",
                                        header: "Image_PixMap.hxx".}
proc SetTopDown*(this: var Image_PixMap; theIsTopDown: bool) {.
    importcpp: "SetTopDown", header: "Image_PixMap.hxx".}
proc TopDownInc*(this: Image_PixMap): Standard_Size {.noSideEffect,
    importcpp: "TopDownInc", header: "Image_PixMap.hxx".}
proc Data*(this: Image_PixMap): ptr Standard_Byte {.noSideEffect, importcpp: "Data",
    header: "Image_PixMap.hxx".}
proc ChangeData*(this: var Image_PixMap): ptr Standard_Byte {.importcpp: "ChangeData",
    header: "Image_PixMap.hxx".}
proc Row*(this: Image_PixMap; theRow: Standard_Size): ptr Standard_Byte {.noSideEffect,
    importcpp: "Row", header: "Image_PixMap.hxx".}
proc ChangeRow*(this: var Image_PixMap; theRow: Standard_Size): ptr Standard_Byte {.
    importcpp: "ChangeRow", header: "Image_PixMap.hxx".}
proc SizePixelBytes*(this: Image_PixMap): Standard_Size {.noSideEffect,
    importcpp: "SizePixelBytes", header: "Image_PixMap.hxx".}
proc SizePixelBytes*(thePixelFormat: Image_Format): Standard_Size {.
    importcpp: "Image_PixMap::SizePixelBytes(@)", header: "Image_PixMap.hxx".}
proc SizeRowBytes*(this: Image_PixMap): Standard_Size {.noSideEffect,
    importcpp: "SizeRowBytes", header: "Image_PixMap.hxx".}
proc RowExtraBytes*(this: Image_PixMap): Standard_Size {.noSideEffect,
    importcpp: "RowExtraBytes", header: "Image_PixMap.hxx".}
proc MaxRowAligmentBytes*(this: Image_PixMap): Standard_Size {.noSideEffect,
    importcpp: "MaxRowAligmentBytes", header: "Image_PixMap.hxx".}
proc SizeBytes*(this: Image_PixMap): Standard_Size {.noSideEffect,
    importcpp: "SizeBytes", header: "Image_PixMap.hxx".}
proc Value*[ColorType_t](this: Image_PixMap; theRow: Standard_Size;
                        theCol: Standard_Size): ColorType_t {.noSideEffect,
    importcpp: "Value", header: "Image_PixMap.hxx".}
proc ChangeValue*[ColorType_t](this: var Image_PixMap; theRow: Standard_Size;
                              theCol: Standard_Size): var ColorType_t {.
    importcpp: "ChangeValue", header: "Image_PixMap.hxx".}
proc RawValue*(this: Image_PixMap; theRow: Standard_Size; theCol: Standard_Size): ptr Standard_Byte {.
    noSideEffect, importcpp: "RawValue", header: "Image_PixMap.hxx".}
proc ChangeRawValue*(this: var Image_PixMap; theRow: Standard_Size;
                    theCol: Standard_Size): ptr Standard_Byte {.
    importcpp: "ChangeRawValue", header: "Image_PixMap.hxx".}
## !!!Ignored construct:  public : Standard_DEPRECATED ( This member is deprecated, use Image_Format enumeration instead ) typedef Image_Format ImgFormat ;
## Error: identifier expected, but got: This member is deprecated, use Image_Format enumeration instead!!!

discard "forward decl of Image_PixMap"
type
  Handle_Image_PixMap* = handle[Image_PixMap]
