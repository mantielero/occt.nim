##  Created on: 1995-03-17
##  Created by: Dieter THIEMANN
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
  ../Standard/Standard_Handle, ../TColStd/TColStd_HSequenceOfTransient,
  TopoDSToStep_BuilderError, TopoDSToStep_Root, ../Standard/Standard_Boolean,
  ../MoniTool/MoniTool_DataMapOfShapeTransient

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDSToStep_Tool"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  TopoDSToStep_WireframeBuilder* {.importcpp: "TopoDSToStep_WireframeBuilder",
                                  header: "TopoDSToStep_WireframeBuilder.hxx",
                                  bycopy.} = object of TopoDSToStep_Root


proc constructTopoDSToStep_WireframeBuilder*(): TopoDSToStep_WireframeBuilder {.
    constructor, importcpp: "TopoDSToStep_WireframeBuilder(@)",
    header: "TopoDSToStep_WireframeBuilder.hxx".}
proc constructTopoDSToStep_WireframeBuilder*(S: TopoDS_Shape;
    T: var TopoDSToStep_Tool; FP: handle[Transfer_FinderProcess]): TopoDSToStep_WireframeBuilder {.
    constructor, importcpp: "TopoDSToStep_WireframeBuilder(@)",
    header: "TopoDSToStep_WireframeBuilder.hxx".}
proc Init*(this: var TopoDSToStep_WireframeBuilder; S: TopoDS_Shape;
          T: var TopoDSToStep_Tool; FP: handle[Transfer_FinderProcess]) {.
    importcpp: "Init", header: "TopoDSToStep_WireframeBuilder.hxx".}
proc Error*(this: TopoDSToStep_WireframeBuilder): TopoDSToStep_BuilderError {.
    noSideEffect, importcpp: "Error", header: "TopoDSToStep_WireframeBuilder.hxx".}
proc Value*(this: TopoDSToStep_WireframeBuilder): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect, importcpp: "Value",
                                   header: "TopoDSToStep_WireframeBuilder.hxx".}
proc GetTrimmedCurveFromEdge*(this: TopoDSToStep_WireframeBuilder; E: TopoDS_Edge;
                             F: TopoDS_Face;
                             M: var MoniTool_DataMapOfShapeTransient;
                             L: var handle[TColStd_HSequenceOfTransient]): Standard_Boolean {.
    noSideEffect, importcpp: "GetTrimmedCurveFromEdge",
    header: "TopoDSToStep_WireframeBuilder.hxx".}
proc GetTrimmedCurveFromFace*(this: TopoDSToStep_WireframeBuilder; F: TopoDS_Face;
                             M: var MoniTool_DataMapOfShapeTransient;
                             L: var handle[TColStd_HSequenceOfTransient]): Standard_Boolean {.
    noSideEffect, importcpp: "GetTrimmedCurveFromFace",
    header: "TopoDSToStep_WireframeBuilder.hxx".}
proc GetTrimmedCurveFromShape*(this: TopoDSToStep_WireframeBuilder;
                              S: TopoDS_Shape;
                              M: var MoniTool_DataMapOfShapeTransient;
                              L: var handle[TColStd_HSequenceOfTransient]): Standard_Boolean {.
    noSideEffect, importcpp: "GetTrimmedCurveFromShape",
    header: "TopoDSToStep_WireframeBuilder.hxx".}