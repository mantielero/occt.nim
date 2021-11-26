##  Created on: 1998-08-18
##  Created by: Yves FRICAUD
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_Association"
type
  HandleTopOpeBRepDS_Association* = Handle[TopOpeBRepDS_Association]
  TopOpeBRepDS_Association* {.importcpp: "TopOpeBRepDS_Association",
                             header: "TopOpeBRepDS_Association.hxx", bycopy.} = object of StandardTransient


proc newTopOpeBRepDS_Association*(): TopOpeBRepDS_Association {.cdecl, constructor,
    importcpp: "TopOpeBRepDS_Association(@)", dynlib: tkbool.}
proc associate*(this: var TopOpeBRepDS_Association;
               i: Handle[TopOpeBRepDS_Interference];
               k: Handle[TopOpeBRepDS_Interference]) {.cdecl,
    importcpp: "Associate", dynlib: tkbool.}
proc associate*(this: var TopOpeBRepDS_Association;
               i: Handle[TopOpeBRepDS_Interference];
               li: TopOpeBRepDS_ListOfInterference) {.cdecl,
    importcpp: "Associate", dynlib: tkbool.}
proc hasAssociation*(this: TopOpeBRepDS_Association;
                    i: Handle[TopOpeBRepDS_Interference]): bool {.noSideEffect,
    cdecl, importcpp: "HasAssociation", dynlib: tkbool.}
proc associated*(this: var TopOpeBRepDS_Association;
                i: Handle[TopOpeBRepDS_Interference]): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "Associated", dynlib: tkbool.}
proc areAssociated*(this: TopOpeBRepDS_Association;
                   i: Handle[TopOpeBRepDS_Interference];
                   k: Handle[TopOpeBRepDS_Interference]): bool {.noSideEffect,
    cdecl, importcpp: "AreAssociated", dynlib: tkbool.}