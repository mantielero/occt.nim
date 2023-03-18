import ../standard/standard_types
import resource_types
import ../tcollection/tcollection_types





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



proc convertSJISToUnicode*(fromstr: cstring; tostr: var TCollectionExtendedString) {.
    cdecl, importcpp: "Resource_Unicode::ConvertSJISToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc convertEUCToUnicode*(fromstr: cstring; tostr: var TCollectionExtendedString) {.
    cdecl, importcpp: "Resource_Unicode::ConvertEUCToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc convertGBToUnicode*(fromstr: cstring; tostr: var TCollectionExtendedString) {.
    cdecl, importcpp: "Resource_Unicode::ConvertGBToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc convertGBKToUnicode*(fromstr: cstring; tostr: var TCollectionExtendedString): bool {.
    cdecl, importcpp: "Resource_Unicode::ConvertGBKToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc convertBig5ToUnicode*(fromstr: cstring; tostr: var TCollectionExtendedString): bool {.
    cdecl, importcpp: "Resource_Unicode::ConvertBig5ToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc convertUnicodeToSJIS*(fromstr: TCollectionExtendedString;
                          tostr: var StandardPCharacter; maxsize: cint): bool {.cdecl,
    importcpp: "Resource_Unicode::ConvertUnicodeToSJIS(@)",
    header: "Resource_Unicode.hxx".}
proc convertUnicodeToEUC*(fromstr: TCollectionExtendedString;
                         tostr: var StandardPCharacter; maxsize: cint): bool {.cdecl,
    importcpp: "Resource_Unicode::ConvertUnicodeToEUC(@)",
    header: "Resource_Unicode.hxx".}
proc convertUnicodeToGB*(fromstr: TCollectionExtendedString;
                        tostr: var StandardPCharacter; maxsize: cint): bool {.cdecl,
    importcpp: "Resource_Unicode::ConvertUnicodeToGB(@)",
    header: "Resource_Unicode.hxx".}
proc convertUnicodeToANSI*(fromstr: TCollectionExtendedString;
                          tostr: var StandardPCharacter; maxsize: cint): bool {.cdecl,
    importcpp: "Resource_Unicode::ConvertUnicodeToANSI(@)",
    header: "Resource_Unicode.hxx".}
proc setFormat*(typecode: ResourceFormatType) {.cdecl,
    importcpp: "Resource_Unicode::SetFormat(@)", header: "Resource_Unicode.hxx".}
proc getFormat*(): ResourceFormatType {.cdecl, importcpp: "Resource_Unicode::GetFormat(@)",
                                     header: "Resource_Unicode.hxx".}
proc readFormat*() {.cdecl, importcpp: "Resource_Unicode::ReadFormat(@)",
                   header: "Resource_Unicode.hxx".}
proc convertFormatToUnicode*(theFromStr: cstring;
                            theToStr: var TCollectionExtendedString) {.cdecl,
    importcpp: "Resource_Unicode::ConvertFormatToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc convertFormatToUnicode*(theFormat: ResourceFormatType; theFromStr: cstring;
                            theToStr: var TCollectionExtendedString) {.cdecl,
    importcpp: "Resource_Unicode::ConvertFormatToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc convertUnicodeToFormat*(theFormat: ResourceFormatType;
                            theFromStr: TCollectionExtendedString;
                            theToStr: var StandardPCharacter; theMaxSize: cint): bool {.
    cdecl, importcpp: "Resource_Unicode::ConvertUnicodeToFormat(@)",
    header: "Resource_Unicode.hxx".}
proc convertUnicodeToFormat*(theFromStr: TCollectionExtendedString;
                            theToStr: var StandardPCharacter; theMaxSize: cint): bool {.
    cdecl, importcpp: "Resource_Unicode::ConvertUnicodeToFormat(@)",
    header: "Resource_Unicode.hxx".}


