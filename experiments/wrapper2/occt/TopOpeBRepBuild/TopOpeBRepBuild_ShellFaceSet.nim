##  Created on: 1993-06-16
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Solid, TopOpeBRepBuild_ShapeSet,
  ../Standard/Standard_Address, ../TCollection/TCollection_AsciiString,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TCollection_AsciiString"
type
  TopOpeBRepBuild_ShellFaceSet* {.importcpp: "TopOpeBRepBuild_ShellFaceSet",
                                 header: "TopOpeBRepBuild_ShellFaceSet.hxx",
                                 bycopy.} = object of TopOpeBRepBuild_ShapeSet ## !
                                                                          ## Creates a
                                                                          ## ShellFaceSet to build blocks of faces
                                                                          ## !
                                                                          ## connected by edges.


proc constructTopOpeBRepBuild_ShellFaceSet*(): TopOpeBRepBuild_ShellFaceSet {.
    constructor, importcpp: "TopOpeBRepBuild_ShellFaceSet(@)",
    header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc constructTopOpeBRepBuild_ShellFaceSet*(S: TopoDS_Shape;
    Addr: Standard_Address = nil): TopOpeBRepBuild_ShellFaceSet {.constructor,
    importcpp: "TopOpeBRepBuild_ShellFaceSet(@)",
    header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc Solid*(this: TopOpeBRepBuild_ShellFaceSet): TopoDS_Solid {.noSideEffect,
    importcpp: "Solid", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc AddShape*(this: var TopOpeBRepBuild_ShellFaceSet; S: TopoDS_Shape) {.
    importcpp: "AddShape", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc AddStartElement*(this: var TopOpeBRepBuild_ShellFaceSet; S: TopoDS_Shape) {.
    importcpp: "AddStartElement", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc AddElement*(this: var TopOpeBRepBuild_ShellFaceSet; S: TopoDS_Shape) {.
    importcpp: "AddElement", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc DumpSS*(this: var TopOpeBRepBuild_ShellFaceSet) {.importcpp: "DumpSS",
    header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc SName*(this: TopOpeBRepBuild_ShellFaceSet; S: TopoDS_Shape;
           sb: TCollection_AsciiString = ""; sa: TCollection_AsciiString = ""): TCollection_AsciiString {.
    noSideEffect, importcpp: "SName", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc SName*(this: TopOpeBRepBuild_ShellFaceSet; S: TopTools_ListOfShape;
           sb: TCollection_AsciiString = ""; sa: TCollection_AsciiString = ""): TCollection_AsciiString {.
    noSideEffect, importcpp: "SName", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc SNameori*(this: TopOpeBRepBuild_ShellFaceSet; S: TopoDS_Shape;
              sb: TCollection_AsciiString = ""; sa: TCollection_AsciiString = ""): TCollection_AsciiString {.
    noSideEffect, importcpp: "SNameori", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc SNameori*(this: TopOpeBRepBuild_ShellFaceSet; S: TopTools_ListOfShape;
              sb: TCollection_AsciiString = ""; sa: TCollection_AsciiString = ""): TCollection_AsciiString {.
    noSideEffect, importcpp: "SNameori", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}