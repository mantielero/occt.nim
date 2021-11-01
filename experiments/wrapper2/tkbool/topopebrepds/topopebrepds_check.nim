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
type
  HandleTopOpeBRepDS_Check* = Handle[TopOpeBRepDS_Check]

## ! a tool verifing integrity and structure of DS

type
  TopOpeBRepDS_Check* {.importcpp: "TopOpeBRepDS_Check",
                       header: "TopOpeBRepDS_Check.hxx", bycopy.} = object of StandardTransient


proc newTopOpeBRepDS_Check*(): TopOpeBRepDS_Check {.cdecl, constructor,
    importcpp: "TopOpeBRepDS_Check(@)", dynlib: tkbool.}
proc newTopOpeBRepDS_Check*(hds: Handle[TopOpeBRepDS_HDataStructure]): TopOpeBRepDS_Check {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_Check(@)", dynlib: tkbool.}
proc chkIntg*(this: var TopOpeBRepDS_Check): bool {.cdecl, importcpp: "ChkIntg",
    dynlib: tkbool.}
proc chkIntgInterf*(this: var TopOpeBRepDS_Check;
                   li: TopOpeBRepDS_ListOfInterference): bool {.cdecl,
    importcpp: "ChkIntgInterf", dynlib: tkbool.}
proc checkDS*(this: var TopOpeBRepDS_Check; i: cint; k: TopOpeBRepDS_Kind): bool {.cdecl,
    importcpp: "CheckDS", dynlib: tkbool.}
proc chkIntgSamDom*(this: var TopOpeBRepDS_Check): bool {.cdecl,
    importcpp: "ChkIntgSamDom", dynlib: tkbool.}
proc checkShapes*(this: TopOpeBRepDS_Check; ls: TopToolsListOfShape): bool {.
    noSideEffect, cdecl, importcpp: "CheckShapes", dynlib: tkbool.}
proc oneVertexOnPnt*(this: var TopOpeBRepDS_Check): bool {.cdecl,
    importcpp: "OneVertexOnPnt", dynlib: tkbool.}
proc hds*(this: TopOpeBRepDS_Check): Handle[TopOpeBRepDS_HDataStructure] {.
    noSideEffect, cdecl, importcpp: "HDS", dynlib: tkbool.}
proc changeHDS*(this: var TopOpeBRepDS_Check): var Handle[TopOpeBRepDS_HDataStructure] {.
    cdecl, importcpp: "ChangeHDS", dynlib: tkbool.}
proc printIntg*(this: var TopOpeBRepDS_Check; s: var StandardOStream): var StandardOStream {.
    cdecl, importcpp: "PrintIntg", dynlib: tkbool.}
proc print*(this: var TopOpeBRepDS_Check; stat: TopOpeBRepDS_CheckStatus;
           s: var StandardOStream): var StandardOStream {.cdecl, importcpp: "Print",
    dynlib: tkbool.}
proc printShape*(this: var TopOpeBRepDS_Check; se: TopAbsShapeEnum;
                s: var StandardOStream): var StandardOStream {.cdecl,
    importcpp: "PrintShape", dynlib: tkbool.}
proc printShape*(this: var TopOpeBRepDS_Check; index: cint; s: var StandardOStream): var StandardOStream {.
    cdecl, importcpp: "PrintShape", dynlib: tkbool.}