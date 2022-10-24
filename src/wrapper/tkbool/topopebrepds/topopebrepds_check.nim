import topopebrepds_types

##  Created on: 1997-04-10
##  Created by: Prestataire Mary FABIEN
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

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopOpeBRepDS_Check"




proc newTopOpeBRepDS_Check*(): TopOpeBRepDS_Check {.cdecl, constructor,
    importcpp: "TopOpeBRepDS_Check(@)", header: "TopOpeBRepDS_Check.hxx".}
proc newTopOpeBRepDS_Check*(hds: Handle[TopOpeBRepDS_HDataStructure]): TopOpeBRepDS_Check {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_Check(@)", header: "TopOpeBRepDS_Check.hxx".}
proc chkIntg*(this: var TopOpeBRepDS_Check): bool {.cdecl, importcpp: "ChkIntg",
    header: "TopOpeBRepDS_Check.hxx".}
proc chkIntgInterf*(this: var TopOpeBRepDS_Check;
                   li: TopOpeBRepDS_ListOfInterference): bool {.cdecl,
    importcpp: "ChkIntgInterf", header: "TopOpeBRepDS_Check.hxx".}
proc checkDS*(this: var TopOpeBRepDS_Check; i: cint; k: TopOpeBRepDS_Kind): bool {.cdecl,
    importcpp: "CheckDS", header: "TopOpeBRepDS_Check.hxx".}
proc chkIntgSamDom*(this: var TopOpeBRepDS_Check): bool {.cdecl,
    importcpp: "ChkIntgSamDom", header: "TopOpeBRepDS_Check.hxx".}
proc checkShapes*(this: TopOpeBRepDS_Check; ls: TopToolsListOfShape): bool {.
    noSideEffect, cdecl, importcpp: "CheckShapes", header: "TopOpeBRepDS_Check.hxx".}
proc oneVertexOnPnt*(this: var TopOpeBRepDS_Check): bool {.cdecl,
    importcpp: "OneVertexOnPnt", header: "TopOpeBRepDS_Check.hxx".}
proc hds*(this: TopOpeBRepDS_Check): Handle[TopOpeBRepDS_HDataStructure] {.
    noSideEffect, cdecl, importcpp: "HDS", header: "TopOpeBRepDS_Check.hxx".}
proc changeHDS*(this: var TopOpeBRepDS_Check): var Handle[TopOpeBRepDS_HDataStructure] {.
    cdecl, importcpp: "ChangeHDS", header: "TopOpeBRepDS_Check.hxx".}
proc printIntg*(this: var TopOpeBRepDS_Check; s: var StandardOStream): var StandardOStream {.
    cdecl, importcpp: "PrintIntg", header: "TopOpeBRepDS_Check.hxx".}
proc print*(this: var TopOpeBRepDS_Check; stat: TopOpeBRepDS_CheckStatus;
           s: var StandardOStream): var StandardOStream {.cdecl, importcpp: "Print",
    header: "TopOpeBRepDS_Check.hxx".}
proc printShape*(this: var TopOpeBRepDS_Check; se: TopAbsShapeEnum;
                s: var StandardOStream): var StandardOStream {.cdecl,
    importcpp: "PrintShape", header: "TopOpeBRepDS_Check.hxx".}
proc printShape*(this: var TopOpeBRepDS_Check; index: cint; s: var StandardOStream): var StandardOStream {.
    cdecl, importcpp: "PrintShape", header: "TopOpeBRepDS_Check.hxx".}
