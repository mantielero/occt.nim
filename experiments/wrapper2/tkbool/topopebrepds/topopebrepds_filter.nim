##  Created on: 1997-04-21
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
type
  TopOpeBRepDS_Filter* {.importcpp: "TopOpeBRepDS_Filter",
                        header: "TopOpeBRepDS_Filter.hxx", bycopy.} = object


proc newTopOpeBRepDS_Filter*(hds: Handle[TopOpeBRepDS_HDataStructure];
                            pClassif: TopOpeBRepToolPShapeClassifier = 0): TopOpeBRepDS_Filter {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_Filter(@)", dynlib: tkbool.}
proc processInterferences*(this: var TopOpeBRepDS_Filter) {.cdecl,
    importcpp: "ProcessInterferences", dynlib: tkbool.}
proc processFaceInterferences*(this: var TopOpeBRepDS_Filter; mEsp: TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State) {.
    cdecl, importcpp: "ProcessFaceInterferences", dynlib: tkbool.}
proc processFaceInterferences*(this: var TopOpeBRepDS_Filter; i: cint; mEsp: TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State) {.
    cdecl, importcpp: "ProcessFaceInterferences", dynlib: tkbool.}
proc processEdgeInterferences*(this: var TopOpeBRepDS_Filter) {.cdecl,
    importcpp: "ProcessEdgeInterferences", dynlib: tkbool.}
proc processEdgeInterferences*(this: var TopOpeBRepDS_Filter; i: cint) {.cdecl,
    importcpp: "ProcessEdgeInterferences", dynlib: tkbool.}
proc processCurveInterferences*(this: var TopOpeBRepDS_Filter) {.cdecl,
    importcpp: "ProcessCurveInterferences", dynlib: tkbool.}
proc processCurveInterferences*(this: var TopOpeBRepDS_Filter; i: cint) {.cdecl,
    importcpp: "ProcessCurveInterferences", dynlib: tkbool.}