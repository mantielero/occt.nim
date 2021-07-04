##  Created on: 1995-03-08
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_PCharacter, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_IStream,
  ../Standard/Standard_OStream, ../Standard/Standard_Boolean

discard "forward decl of Standard_DomainError"
type
  Interface_MSG* {.importcpp: "Interface_MSG", header: "Interface_MSG.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## A
                                                                                      ## MSG
                                                                                      ## is
                                                                                      ## created
                                                                                      ## to
                                                                                      ## write
                                                                                      ## a
                                                                                      ## "functional
                                                                                      ## code"
                                                                                      ## in
                                                                                      ## conjunction
                                                                                      ##
                                                                                      ## !
                                                                                      ## with
                                                                                      ## operator
                                                                                      ## ()
                                                                                      ## attached
                                                                                      ## to
                                                                                      ## Value
                                                                                      ##
                                                                                      ## !
                                                                                      ## Then,
                                                                                      ## to
                                                                                      ## have
                                                                                      ## a
                                                                                      ## translated
                                                                                      ## message,
                                                                                      ## write
                                                                                      ## in
                                                                                      ## C++
                                                                                      ## :
                                                                                      ##
                                                                                      ## !
                                                                                      ##
                                                                                      ## !
                                                                                      ## Interface_MSG("...mykey...")
                                                                                      ## which
                                                                                      ## returns
                                                                                      ## a
                                                                                      ## CString
                                                                                      ##
                                                                                      ## !
                                                                                      ## See
                                                                                      ## also
                                                                                      ## some
                                                                                      ## help
                                                                                      ## which
                                                                                      ## follow


proc constructInterface_MSG*(key: Standard_CString): Interface_MSG {.constructor,
    importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc constructInterface_MSG*(key: Standard_CString; i1: Standard_Integer): Interface_MSG {.
    constructor, importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc constructInterface_MSG*(key: Standard_CString; i1: Standard_Integer;
                            i2: Standard_Integer): Interface_MSG {.constructor,
    importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc constructInterface_MSG*(key: Standard_CString; r1: Standard_Real;
                            intervals: Standard_Integer = -1): Interface_MSG {.
    constructor, importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc constructInterface_MSG*(key: Standard_CString; str: Standard_CString): Interface_MSG {.
    constructor, importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc constructInterface_MSG*(key: Standard_CString; ival: Standard_Integer;
                            str: Standard_CString): Interface_MSG {.constructor,
    importcpp: "Interface_MSG(@)", header: "Interface_MSG.hxx".}
proc Destroy*(this: var Interface_MSG) {.importcpp: "Destroy",
                                     header: "Interface_MSG.hxx".}
proc destroyInterface_MSG*(this: var Interface_MSG) {.
    importcpp: "#.~Interface_MSG()", header: "Interface_MSG.hxx".}
proc Value*(this: Interface_MSG): Standard_CString {.noSideEffect,
    importcpp: "Value", header: "Interface_MSG.hxx".}
converter `Standard_CString`*(this: Interface_MSG): Standard_CString {.noSideEffect,
    importcpp: "Interface_MSG::operator Standard_CString",
    header: "Interface_MSG.hxx".}
proc Read*(S: var Standard_IStream): Standard_Integer {.
    importcpp: "Interface_MSG::Read(@)", header: "Interface_MSG.hxx".}
proc Read*(file: Standard_CString): Standard_Integer {.
    importcpp: "Interface_MSG::Read(@)", header: "Interface_MSG.hxx".}
proc Write*(S: var Standard_OStream; rootkey: Standard_CString = ""): Standard_Integer {.
    importcpp: "Interface_MSG::Write(@)", header: "Interface_MSG.hxx".}
proc IsKey*(mess: Standard_CString): Standard_Boolean {.
    importcpp: "Interface_MSG::IsKey(@)", header: "Interface_MSG.hxx".}
proc Translated*(key: Standard_CString): Standard_CString {.
    importcpp: "Interface_MSG::Translated(@)", header: "Interface_MSG.hxx".}
proc Record*(key: Standard_CString; item: Standard_CString) {.
    importcpp: "Interface_MSG::Record(@)", header: "Interface_MSG.hxx".}
proc SetTrace*(toprint: Standard_Boolean; torecord: Standard_Boolean) {.
    importcpp: "Interface_MSG::SetTrace(@)", header: "Interface_MSG.hxx".}
proc SetMode*(running: Standard_Boolean; raising: Standard_Boolean) {.
    importcpp: "Interface_MSG::SetMode(@)", header: "Interface_MSG.hxx".}
proc PrintTrace*(S: var Standard_OStream) {.importcpp: "Interface_MSG::PrintTrace(@)",
                                        header: "Interface_MSG.hxx".}
proc Intervalled*(val: Standard_Real; order: Standard_Integer = 3;
                 upper: Standard_Boolean = Standard_False): Standard_Real {.
    importcpp: "Interface_MSG::Intervalled(@)", header: "Interface_MSG.hxx".}
proc TDate*(text: Standard_CString; yy: Standard_Integer; mm: Standard_Integer;
           dd: Standard_Integer; hh: Standard_Integer; mn: Standard_Integer;
           ss: Standard_Integer; format: Standard_CString = "") {.
    importcpp: "Interface_MSG::TDate(@)", header: "Interface_MSG.hxx".}
proc NDate*(text: Standard_CString; yy: var Standard_Integer;
           mm: var Standard_Integer; dd: var Standard_Integer;
           hh: var Standard_Integer; mn: var Standard_Integer;
           ss: var Standard_Integer): Standard_Boolean {.
    importcpp: "Interface_MSG::NDate(@)", header: "Interface_MSG.hxx".}
proc CDate*(text1: Standard_CString; text2: Standard_CString): Standard_Integer {.
    importcpp: "Interface_MSG::CDate(@)", header: "Interface_MSG.hxx".}
proc Blanks*(val: Standard_Integer; max: Standard_Integer): Standard_CString {.
    importcpp: "Interface_MSG::Blanks(@)", header: "Interface_MSG.hxx".}
proc Blanks*(val: Standard_CString; max: Standard_Integer): Standard_CString {.
    importcpp: "Interface_MSG::Blanks(@)", header: "Interface_MSG.hxx".}
proc Blanks*(count: Standard_Integer): Standard_CString {.
    importcpp: "Interface_MSG::Blanks(@)", header: "Interface_MSG.hxx".}
proc Print*(S: var Standard_OStream; val: Standard_CString; max: Standard_Integer;
           just: Standard_Integer = -1) {.importcpp: "Interface_MSG::Print(@)",
                                      header: "Interface_MSG.hxx".}