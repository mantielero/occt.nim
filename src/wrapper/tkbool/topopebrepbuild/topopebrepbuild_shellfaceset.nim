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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TCollection_AsciiString"
type
  TopOpeBRepBuildShellFaceSet* {.importcpp: "TopOpeBRepBuild_ShellFaceSet",
                                header: "TopOpeBRepBuild_ShellFaceSet.hxx", bycopy.} = object of TopOpeBRepBuildShapeSet ##
                                                                                                                  ## !
                                                                                                                  ## Creates
                                                                                                                  ## a
                                                                                                                  ## ShellFaceSet
                                                                                                                  ## to
                                                                                                                  ## build
                                                                                                                  ## blocks
                                                                                                                  ## of
                                                                                                                  ## faces
                                                                                                                  ##
                                                                                                                  ## !
                                                                                                                  ## connected
                                                                                                                  ## by
                                                                                                                  ## edges.


proc newTopOpeBRepBuildShellFaceSet*(): TopOpeBRepBuildShellFaceSet {.cdecl,
    constructor, importcpp: "TopOpeBRepBuild_ShellFaceSet(@)", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc newTopOpeBRepBuildShellFaceSet*(s: TopoDS_Shape; `addr`: pointer = nil): TopOpeBRepBuildShellFaceSet {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_ShellFaceSet(@)", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc solid*(this: TopOpeBRepBuildShellFaceSet): TopoDS_Solid {.noSideEffect, cdecl,
    importcpp: "Solid", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc addShape*(this: var TopOpeBRepBuildShellFaceSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddShape", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc addStartElement*(this: var TopOpeBRepBuildShellFaceSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddStartElement", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc addElement*(this: var TopOpeBRepBuildShellFaceSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddElement", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc dumpSS*(this: var TopOpeBRepBuildShellFaceSet) {.cdecl, importcpp: "DumpSS",
    header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc sName*(this: TopOpeBRepBuildShellFaceSet; s: TopoDS_Shape;
           sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SName", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc sName*(this: TopOpeBRepBuildShellFaceSet; s: TopToolsListOfShape;
           sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SName", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc sNameori*(this: TopOpeBRepBuildShellFaceSet; s: TopoDS_Shape;
              sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SNameori", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}
proc sNameori*(this: TopOpeBRepBuildShellFaceSet; s: TopToolsListOfShape;
              sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SNameori", header: "TopOpeBRepBuild_ShellFaceSet.hxx".}