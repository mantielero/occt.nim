##  Created on: 1997-10-22
##  Created by: Jean Yves LEBEY
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

when defined(OCCT_DEBUG):
  import
    ../TopOpeBRepTool/TopOpeBRepTool_define, ../Standard/Standard_OStream,
    ../TopoDS/TopoDS_Shape

  type
    TopOpeBRep_traceSIFF* {.importcpp: "TopOpeBRep_traceSIFF",
                           header: "TopOpeBRep_traceSIFF.hxx", bycopy.} = object

  proc constructTopOpeBRep_traceSIFF*(): TopOpeBRep_traceSIFF {.constructor,
      importcpp: "TopOpeBRep_traceSIFF(@)", header: "TopOpeBRep_traceSIFF.hxx".}
  proc Reset*(this: var TopOpeBRep_traceSIFF) {.importcpp: "Reset",
      header: "TopOpeBRep_traceSIFF.hxx".}
  proc Set*(this: var TopOpeBRep_traceSIFF; b: Standard_Boolean; n: Standard_Integer;
           a: cstringArray) {.importcpp: "Set", header: "TopOpeBRep_traceSIFF.hxx".}
  proc Set*(this: var TopOpeBRep_traceSIFF; brep1: TCollection_AsciiString;
           brep2: TCollection_AsciiString; n: TCollection_AsciiString) {.
      importcpp: "Set", header: "TopOpeBRep_traceSIFF.hxx".}
  proc Name1*(this: TopOpeBRep_traceSIFF; I: Standard_Integer): TCollection_AsciiString {.
      noSideEffect, importcpp: "Name1", header: "TopOpeBRep_traceSIFF.hxx".}
  proc Name2*(this: TopOpeBRep_traceSIFF; I: Standard_Integer): TCollection_AsciiString {.
      noSideEffect, importcpp: "Name2", header: "TopOpeBRep_traceSIFF.hxx".}
  proc File*(this: TopOpeBRep_traceSIFF): TCollection_AsciiString {.noSideEffect,
      importcpp: "File", header: "TopOpeBRep_traceSIFF.hxx".}
  proc Start*(this: var TopOpeBRep_traceSIFF; s: TCollection_AsciiString;
             OS: var Standard_OStream): Standard_Boolean {.importcpp: "Start",
      header: "TopOpeBRep_traceSIFF.hxx".}
  proc Add*(this: var TopOpeBRep_traceSIFF; I1: Standard_Integer; I2: Standard_Integer) {.
      importcpp: "Add", header: "TopOpeBRep_traceSIFF.hxx".}
  proc End*(this: var TopOpeBRep_traceSIFF; s: TCollection_AsciiString;
           OS: var Standard_OStream) {.importcpp: "End",
                                    header: "TopOpeBRep_traceSIFF.hxx".}
  ##  #ifdef OCCT_DEBUG
##  #define _TopOpeBRep_traceSIFF_HeaderFile
