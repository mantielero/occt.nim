##  Created on: 2015-08-06
##  Created by: Ilya Novikov
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../XCAFDoc/XCAFDoc_DimTolTool,
  ../TDocStd/TDocStd_Document, ../Standard/Standard_Boolean,
  XCAFDimTolObjects_DimensionObjectSequence,
  XCAFDimTolObjects_GeomToleranceObjectSequence,
  XCAFDimTolObjects_DatumObjectSequence,
  XCAFDimTolObjects_DataMapOfToleranceDatum, XCAFDimTolObjects_DatumObject

discard "forward decl of TDocStd_Document"
discard "forward decl of TopoDS_Shape"
type
  XCAFDimTolObjects_Tool* {.importcpp: "XCAFDimTolObjects_Tool",
                           header: "XCAFDimTolObjects_Tool.hxx", bycopy.} = object


proc constructXCAFDimTolObjects_Tool*(theDoc: handle[TDocStd_Document]): XCAFDimTolObjects_Tool {.
    constructor, importcpp: "XCAFDimTolObjects_Tool(@)",
    header: "XCAFDimTolObjects_Tool.hxx".}
proc GetDimensions*(this: XCAFDimTolObjects_Tool; theDimensionObjectSequence: var XCAFDimTolObjects_DimensionObjectSequence) {.
    noSideEffect, importcpp: "GetDimensions", header: "XCAFDimTolObjects_Tool.hxx".}
proc GetRefDimensions*(this: XCAFDimTolObjects_Tool; theShape: TopoDS_Shape;
    theDimensions: var XCAFDimTolObjects_DimensionObjectSequence): Standard_Boolean {.
    noSideEffect, importcpp: "GetRefDimensions",
    header: "XCAFDimTolObjects_Tool.hxx".}
proc GetGeomTolerances*(this: XCAFDimTolObjects_Tool;
    theGeomToleranceObjectSequence: var XCAFDimTolObjects_GeomToleranceObjectSequence;
    theDatumObjectSequence: var XCAFDimTolObjects_DatumObjectSequence;
                       theMap: var XCAFDimTolObjects_DataMapOfToleranceDatum) {.
    noSideEffect, importcpp: "GetGeomTolerances",
    header: "XCAFDimTolObjects_Tool.hxx".}
proc GetRefGeomTolerances*(this: XCAFDimTolObjects_Tool; theShape: TopoDS_Shape;
    theGeomToleranceObjectSequence: var XCAFDimTolObjects_GeomToleranceObjectSequence;
    theDatumObjectSequence: var XCAFDimTolObjects_DatumObjectSequence;
                          theMap: var XCAFDimTolObjects_DataMapOfToleranceDatum): Standard_Boolean {.
    noSideEffect, importcpp: "GetRefGeomTolerances",
    header: "XCAFDimTolObjects_Tool.hxx".}
proc GetRefDatum*(this: XCAFDimTolObjects_Tool; theShape: TopoDS_Shape;
                 theDatum: var handle[XCAFDimTolObjects_DatumObject]): Standard_Boolean {.
    noSideEffect, importcpp: "GetRefDatum", header: "XCAFDimTolObjects_Tool.hxx".}