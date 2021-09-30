##  Created on: 1996-09-26
##  Created by: Arnaud BOUZY
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of TCollection_ExtendedString"
type
  ResourceUnicode* {.importcpp: "Resource_Unicode", header: "Resource_Unicode.hxx",
                    bycopy.} = object ## ! Converts non-ASCII CString <fromstr> in SJIS format
                                   ## ! to Unicode ExtendedString <tostr>.


proc convertSJISToUnicode*(fromstr: StandardCString;
                          tostr: var TCollectionExtendedString) {.
    importcpp: "Resource_Unicode::ConvertSJISToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc convertEUCToUnicode*(fromstr: StandardCString;
                         tostr: var TCollectionExtendedString) {.
    importcpp: "Resource_Unicode::ConvertEUCToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc convertGBToUnicode*(fromstr: StandardCString;
                        tostr: var TCollectionExtendedString) {.
    importcpp: "Resource_Unicode::ConvertGBToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc convertGBKToUnicode*(fromstr: StandardCString;
                         tostr: var TCollectionExtendedString): bool {.
    importcpp: "Resource_Unicode::ConvertGBKToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc convertBig5ToUnicode*(fromstr: StandardCString;
                          tostr: var TCollectionExtendedString): bool {.
    importcpp: "Resource_Unicode::ConvertBig5ToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc convertUnicodeToSJIS*(fromstr: TCollectionExtendedString;
                          tostr: var StandardPCharacter; maxsize: cint): bool {.
    importcpp: "Resource_Unicode::ConvertUnicodeToSJIS(@)",
    header: "Resource_Unicode.hxx".}
proc convertUnicodeToEUC*(fromstr: TCollectionExtendedString;
                         tostr: var StandardPCharacter; maxsize: cint): bool {.
    importcpp: "Resource_Unicode::ConvertUnicodeToEUC(@)",
    header: "Resource_Unicode.hxx".}
proc convertUnicodeToGB*(fromstr: TCollectionExtendedString;
                        tostr: var StandardPCharacter; maxsize: cint): bool {.
    importcpp: "Resource_Unicode::ConvertUnicodeToGB(@)",
    header: "Resource_Unicode.hxx".}
proc convertUnicodeToANSI*(fromstr: TCollectionExtendedString;
                          tostr: var StandardPCharacter; maxsize: cint): bool {.
    importcpp: "Resource_Unicode::ConvertUnicodeToANSI(@)",
    header: "Resource_Unicode.hxx".}
proc setFormat*(typecode: ResourceFormatType) {.
    importcpp: "Resource_Unicode::SetFormat(@)", header: "Resource_Unicode.hxx".}
proc getFormat*(): ResourceFormatType {.importcpp: "Resource_Unicode::GetFormat(@)",
                                     header: "Resource_Unicode.hxx".}
proc readFormat*() {.importcpp: "Resource_Unicode::ReadFormat(@)",
                   header: "Resource_Unicode.hxx".}
proc convertFormatToUnicode*(theFromStr: StandardCString;
                            theToStr: var TCollectionExtendedString) {.
    importcpp: "Resource_Unicode::ConvertFormatToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc convertFormatToUnicode*(theFormat: ResourceFormatType;
                            theFromStr: StandardCString;
                            theToStr: var TCollectionExtendedString) {.
    importcpp: "Resource_Unicode::ConvertFormatToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc convertUnicodeToFormat*(theFormat: ResourceFormatType;
                            theFromStr: TCollectionExtendedString;
                            theToStr: var StandardPCharacter; theMaxSize: cint): bool {.
    importcpp: "Resource_Unicode::ConvertUnicodeToFormat(@)",
    header: "Resource_Unicode.hxx".}
proc convertUnicodeToFormat*(theFromStr: TCollectionExtendedString;
                            theToStr: var StandardPCharacter; theMaxSize: cint): bool {.
    importcpp: "Resource_Unicode::ConvertUnicodeToFormat(@)",
    header: "Resource_Unicode.hxx".}

























