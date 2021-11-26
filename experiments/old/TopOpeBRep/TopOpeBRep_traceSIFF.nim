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
  type
    TopOpeBRepTraceSIFF* {.importcpp: "TopOpeBRep_traceSIFF",
                          header: "TopOpeBRep_traceSIFF.hxx", bycopy.} = object

  proc constructTopOpeBRepTraceSIFF*(): TopOpeBRepTraceSIFF {.constructor,
      importcpp: "TopOpeBRep_traceSIFF(@)", header: "TopOpeBRep_traceSIFF.hxx".}
  proc reset*(this: var TopOpeBRepTraceSIFF) {.importcpp: "Reset",
      header: "TopOpeBRep_traceSIFF.hxx".}
  proc set*(this: var TopOpeBRepTraceSIFF; b: StandardBoolean; n: int; a: cstringArray) {.
      importcpp: "Set", header: "TopOpeBRep_traceSIFF.hxx".}
  proc set*(this: var TopOpeBRepTraceSIFF; brep1: TCollectionAsciiString;
           brep2: TCollectionAsciiString; n: TCollectionAsciiString) {.
      importcpp: "Set", header: "TopOpeBRep_traceSIFF.hxx".}
  proc name1*(this: TopOpeBRepTraceSIFF; i: int): TCollectionAsciiString {.
      noSideEffect, importcpp: "Name1", header: "TopOpeBRep_traceSIFF.hxx".}
  proc name2*(this: TopOpeBRepTraceSIFF; i: int): TCollectionAsciiString {.
      noSideEffect, importcpp: "Name2", header: "TopOpeBRep_traceSIFF.hxx".}
  proc file*(this: TopOpeBRepTraceSIFF): TCollectionAsciiString {.noSideEffect,
      importcpp: "File", header: "TopOpeBRep_traceSIFF.hxx".}
  proc start*(this: var TopOpeBRepTraceSIFF; s: TCollectionAsciiString;
             os: var StandardOStream): StandardBoolean {.importcpp: "Start",
      header: "TopOpeBRep_traceSIFF.hxx".}
  proc add*(this: var TopOpeBRepTraceSIFF; i1: int; i2: int) {.importcpp: "Add",
      header: "TopOpeBRep_traceSIFF.hxx".}
  proc `end`*(this: var TopOpeBRepTraceSIFF; s: TCollectionAsciiString;
             os: var StandardOStream) {.importcpp: "End",
                                     header: "TopOpeBRep_traceSIFF.hxx".}
  ##  #ifdef OCCT_DEBUG
##  #define _TopOpeBRep_traceSIFF_HeaderFile
