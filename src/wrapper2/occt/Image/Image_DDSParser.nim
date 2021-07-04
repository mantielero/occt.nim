##  Copyright (c) 2020 OPEN CASCADE SAS
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
  Image_CompressedPixMap, ../NCollection/NCollection_Buffer

discard "forward decl of Image_SupportedFormats"
type
  Image_DDSParser* {.importcpp: "Image_DDSParser", header: "Image_DDSParser.hxx",
                    bycopy.} = object ## ! Load the face from DDS file.
                                   ## ! @param theSupported [in] list of supported image formats
                                   ## ! @param theFile      [in] file path
                                   ## ! @param theFaceIndex [in] face index, within [0, Image_CompressedPixMap::NbFaces()) range;
                                   ## !                          use -1 to skip reading the face data
                                   ## ! @param theFileOffset [in] offset to the DDS data
                                   ## ! @return loaded face or NULL if file cannot be read or not valid DDS file
                                   ## ! Parse DDS header.


proc Load*(theSupported: handle[Image_SupportedFormats];
          theFile: TCollection_AsciiString; theFaceIndex: Standard_Integer;
          theFileOffset: int64_t = 0): handle[Image_CompressedPixMap] {.
    importcpp: "Image_DDSParser::Load(@)", header: "Image_DDSParser.hxx".}
proc Load*(theSupported: handle[Image_SupportedFormats];
          theBuffer: handle[NCollection_Buffer]; theFaceIndex: Standard_Integer): handle[
    Image_CompressedPixMap] {.importcpp: "Image_DDSParser::Load(@)",
                             header: "Image_DDSParser.hxx".}