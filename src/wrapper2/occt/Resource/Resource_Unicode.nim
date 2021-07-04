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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../Standard/Standard_PCharacter,
  ../Standard/Standard_Integer, Resource_FormatType

discard "forward decl of TCollection_ExtendedString"
type
  Resource_Unicode* {.importcpp: "Resource_Unicode",
                     header: "Resource_Unicode.hxx", bycopy.} = object ## ! Converts non-ASCII CString <fromstr> in SJIS format
                                                                  ## ! to Unicode ExtendedString <tostr>.


proc ConvertSJISToUnicode*(fromstr: Standard_CString;
                          tostr: var TCollection_ExtendedString) {.
    importcpp: "Resource_Unicode::ConvertSJISToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc ConvertEUCToUnicode*(fromstr: Standard_CString;
                         tostr: var TCollection_ExtendedString) {.
    importcpp: "Resource_Unicode::ConvertEUCToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc ConvertGBToUnicode*(fromstr: Standard_CString;
                        tostr: var TCollection_ExtendedString) {.
    importcpp: "Resource_Unicode::ConvertGBToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc ConvertGBKToUnicode*(fromstr: Standard_CString;
                         tostr: var TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "Resource_Unicode::ConvertGBKToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc ConvertBig5ToUnicode*(fromstr: Standard_CString;
                          tostr: var TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "Resource_Unicode::ConvertBig5ToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc ConvertUnicodeToSJIS*(fromstr: TCollection_ExtendedString;
                          tostr: var Standard_PCharacter; maxsize: Standard_Integer): Standard_Boolean {.
    importcpp: "Resource_Unicode::ConvertUnicodeToSJIS(@)",
    header: "Resource_Unicode.hxx".}
proc ConvertUnicodeToEUC*(fromstr: TCollection_ExtendedString;
                         tostr: var Standard_PCharacter; maxsize: Standard_Integer): Standard_Boolean {.
    importcpp: "Resource_Unicode::ConvertUnicodeToEUC(@)",
    header: "Resource_Unicode.hxx".}
proc ConvertUnicodeToGB*(fromstr: TCollection_ExtendedString;
                        tostr: var Standard_PCharacter; maxsize: Standard_Integer): Standard_Boolean {.
    importcpp: "Resource_Unicode::ConvertUnicodeToGB(@)",
    header: "Resource_Unicode.hxx".}
proc ConvertUnicodeToANSI*(fromstr: TCollection_ExtendedString;
                          tostr: var Standard_PCharacter; maxsize: Standard_Integer): Standard_Boolean {.
    importcpp: "Resource_Unicode::ConvertUnicodeToANSI(@)",
    header: "Resource_Unicode.hxx".}
proc SetFormat*(typecode: Resource_FormatType) {.
    importcpp: "Resource_Unicode::SetFormat(@)", header: "Resource_Unicode.hxx".}
proc GetFormat*(): Resource_FormatType {.importcpp: "Resource_Unicode::GetFormat(@)",
                                      header: "Resource_Unicode.hxx".}
proc ReadFormat*() {.importcpp: "Resource_Unicode::ReadFormat(@)",
                   header: "Resource_Unicode.hxx".}
proc ConvertFormatToUnicode*(theFromStr: Standard_CString;
                            theToStr: var TCollection_ExtendedString) {.
    importcpp: "Resource_Unicode::ConvertFormatToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc ConvertFormatToUnicode*(theFormat: Resource_FormatType;
                            theFromStr: Standard_CString;
                            theToStr: var TCollection_ExtendedString) {.
    importcpp: "Resource_Unicode::ConvertFormatToUnicode(@)",
    header: "Resource_Unicode.hxx".}
proc ConvertUnicodeToFormat*(theFormat: Resource_FormatType;
                            theFromStr: TCollection_ExtendedString;
                            theToStr: var Standard_PCharacter;
                            theMaxSize: Standard_Integer): Standard_Boolean {.
    importcpp: "Resource_Unicode::ConvertUnicodeToFormat(@)",
    header: "Resource_Unicode.hxx".}
proc ConvertUnicodeToFormat*(theFromStr: TCollection_ExtendedString;
                            theToStr: var Standard_PCharacter;
                            theMaxSize: Standard_Integer): Standard_Boolean {.
    importcpp: "Resource_Unicode::ConvertUnicodeToFormat(@)",
    header: "Resource_Unicode.hxx".}