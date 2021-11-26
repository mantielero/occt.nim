##  Created on: 2004-01-09
##  Created by: Sergey KUUL
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

discard "forward decl of XCAFDoc_ShapeTool"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_DimTolTool"
discard "forward decl of XCAFDoc_DimTolTool"
type
  HandleXCAFDocDimTolTool* = Handle[XCAFDocDimTolTool]

## ! Attribute containing GD&T section of XCAF document.
## ! Provide tools for GD&T section management.

type
  XCAFDocDimTolTool* {.importcpp: "XCAFDoc_DimTolTool",
                      header: "XCAFDoc_DimTolTool.hxx", bycopy.} = object of TDataStdGenericEmpty


proc constructXCAFDocDimTolTool*(): XCAFDocDimTolTool {.constructor,
    importcpp: "XCAFDoc_DimTolTool(@)", header: "XCAFDoc_DimTolTool.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocDimTolTool] {.
    importcpp: "XCAFDoc_DimTolTool::Set(@)", header: "XCAFDoc_DimTolTool.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_DimTolTool::GetID(@)",
                           header: "XCAFDoc_DimTolTool.hxx".}
proc baseLabel*(this: XCAFDocDimTolTool): TDF_Label {.noSideEffect,
    importcpp: "BaseLabel", header: "XCAFDoc_DimTolTool.hxx".}
proc shapeTool*(this: var XCAFDocDimTolTool): Handle[XCAFDocShapeTool] {.
    importcpp: "ShapeTool", header: "XCAFDoc_DimTolTool.hxx".}
proc isDimension*(this: XCAFDocDimTolTool; theLab: TDF_Label): bool {.noSideEffect,
    importcpp: "IsDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc getDimensionLabels*(this: XCAFDocDimTolTool; theLabels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetDimensionLabels", header: "XCAFDoc_DimTolTool.hxx".}
proc setDimension*(this: XCAFDocDimTolTool; theFirstLS: TDF_LabelSequence;
                  theSecondLS: TDF_LabelSequence; theDimL: TDF_Label) {.
    noSideEffect, importcpp: "SetDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc setDimension*(this: XCAFDocDimTolTool; theFirstL: TDF_Label;
                  theSecondL: TDF_Label; theDimL: TDF_Label) {.noSideEffect,
    importcpp: "SetDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc setDimension*(this: XCAFDocDimTolTool; theL: TDF_Label; theDimL: TDF_Label) {.
    noSideEffect, importcpp: "SetDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc getRefDimensionLabels*(this: XCAFDocDimTolTool; theShapeL: TDF_Label;
                           theDimensions: var TDF_LabelSequence): bool {.
    noSideEffect, importcpp: "GetRefDimensionLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc addDimension*(this: var XCAFDocDimTolTool): TDF_Label {.
    importcpp: "AddDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc isGeomTolerance*(this: XCAFDocDimTolTool; theLab: TDF_Label): bool {.
    noSideEffect, importcpp: "IsGeomTolerance", header: "XCAFDoc_DimTolTool.hxx".}
proc getGeomToleranceLabels*(this: XCAFDocDimTolTool;
                            theLabels: var TDF_LabelSequence) {.noSideEffect,
    importcpp: "GetGeomToleranceLabels", header: "XCAFDoc_DimTolTool.hxx".}
proc setGeomTolerance*(this: XCAFDocDimTolTool; theL: TDF_Label;
                      theGeomTolL: TDF_Label) {.noSideEffect,
    importcpp: "SetGeomTolerance", header: "XCAFDoc_DimTolTool.hxx".}
proc setGeomTolerance*(this: XCAFDocDimTolTool; theL: TDF_LabelSequence;
                      theGeomTolL: TDF_Label) {.noSideEffect,
    importcpp: "SetGeomTolerance", header: "XCAFDoc_DimTolTool.hxx".}
proc getRefGeomToleranceLabels*(this: XCAFDocDimTolTool; theShapeL: TDF_Label;
                               theDimTols: var TDF_LabelSequence): bool {.
    noSideEffect, importcpp: "GetRefGeomToleranceLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc addGeomTolerance*(this: var XCAFDocDimTolTool): TDF_Label {.
    importcpp: "AddGeomTolerance", header: "XCAFDoc_DimTolTool.hxx".}
proc isDimTol*(this: XCAFDocDimTolTool; theLab: TDF_Label): bool {.noSideEffect,
    importcpp: "IsDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc getDimTolLabels*(this: XCAFDocDimTolTool; labels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetDimTolLabels", header: "XCAFDoc_DimTolTool.hxx".}
proc findDimTol*(this: XCAFDocDimTolTool; theKind: int;
                theVal: Handle[TColStdHArray1OfReal];
                theName: Handle[TCollectionHAsciiString];
                theDescription: Handle[TCollectionHAsciiString];
                lab: var TDF_Label): bool {.noSideEffect, importcpp: "FindDimTol",
                                        header: "XCAFDoc_DimTolTool.hxx".}
proc findDimTol*(this: XCAFDocDimTolTool; theKind: int;
                theVal: Handle[TColStdHArray1OfReal];
                theName: Handle[TCollectionHAsciiString];
                theDescription: Handle[TCollectionHAsciiString]): TDF_Label {.
    noSideEffect, importcpp: "FindDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc addDimTol*(this: XCAFDocDimTolTool; theKind: int;
               theVal: Handle[TColStdHArray1OfReal];
               theName: Handle[TCollectionHAsciiString];
               theDescription: Handle[TCollectionHAsciiString]): TDF_Label {.
    noSideEffect, importcpp: "AddDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc setDimTol*(this: XCAFDocDimTolTool; theL: TDF_Label; theDimTolL: TDF_Label) {.
    noSideEffect, importcpp: "SetDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc setDimTol*(this: XCAFDocDimTolTool; theL: TDF_Label; theKind: int;
               theVal: Handle[TColStdHArray1OfReal];
               theName: Handle[TCollectionHAsciiString];
               theDescription: Handle[TCollectionHAsciiString]): TDF_Label {.
    noSideEffect, importcpp: "SetDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc getRefShapeLabel*(this: XCAFDocDimTolTool; theL: TDF_Label;
                      theShapeLFirst: var TDF_LabelSequence;
                      theShapeLSecond: var TDF_LabelSequence): bool {.noSideEffect,
    importcpp: "GetRefShapeLabel", header: "XCAFDoc_DimTolTool.hxx".}
proc getDimTol*(this: XCAFDocDimTolTool; theDimTolL: TDF_Label; theKind: var int;
               theVal: var Handle[TColStdHArray1OfReal];
               theName: var Handle[TCollectionHAsciiString];
               theDescription: var Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, importcpp: "GetDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc isDatum*(this: XCAFDocDimTolTool; lab: TDF_Label): bool {.noSideEffect,
    importcpp: "IsDatum", header: "XCAFDoc_DimTolTool.hxx".}
proc getDatumLabels*(this: XCAFDocDimTolTool; labels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetDatumLabels", header: "XCAFDoc_DimTolTool.hxx".}
proc findDatum*(this: XCAFDocDimTolTool; theName: Handle[TCollectionHAsciiString];
               theDescription: Handle[TCollectionHAsciiString];
               theIdentification: Handle[TCollectionHAsciiString];
               lab: var TDF_Label): bool {.noSideEffect, importcpp: "FindDatum",
                                       header: "XCAFDoc_DimTolTool.hxx".}
proc addDatum*(this: XCAFDocDimTolTool; theName: Handle[TCollectionHAsciiString];
              theDescription: Handle[TCollectionHAsciiString];
              theIdentification: Handle[TCollectionHAsciiString]): TDF_Label {.
    noSideEffect, importcpp: "AddDatum", header: "XCAFDoc_DimTolTool.hxx".}
proc addDatum*(this: var XCAFDocDimTolTool): TDF_Label {.importcpp: "AddDatum",
    header: "XCAFDoc_DimTolTool.hxx".}
proc setDatum*(this: XCAFDocDimTolTool; theShapeLabels: TDF_LabelSequence;
              theDatumL: TDF_Label) {.noSideEffect, importcpp: "SetDatum",
                                    header: "XCAFDoc_DimTolTool.hxx".}
proc setDatum*(this: XCAFDocDimTolTool; theL: TDF_Label; theTolerL: TDF_Label;
              theName: Handle[TCollectionHAsciiString];
              theDescription: Handle[TCollectionHAsciiString];
              theIdentification: Handle[TCollectionHAsciiString]) {.noSideEffect,
    importcpp: "SetDatum", header: "XCAFDoc_DimTolTool.hxx".}
proc setDatumToGeomTol*(this: XCAFDocDimTolTool; theDatumL: TDF_Label;
                       theTolerL: TDF_Label) {.noSideEffect,
    importcpp: "SetDatumToGeomTol", header: "XCAFDoc_DimTolTool.hxx".}
proc getDatum*(this: XCAFDocDimTolTool; theDatumL: TDF_Label;
              theName: var Handle[TCollectionHAsciiString];
              theDescription: var Handle[TCollectionHAsciiString];
              theIdentification: var Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, importcpp: "GetDatum", header: "XCAFDoc_DimTolTool.hxx".}
proc getDatumOfTolerLabels*(this: XCAFDocDimTolTool; theDimTolL: TDF_Label;
                           theDatums: var TDF_LabelSequence): bool {.noSideEffect,
    importcpp: "GetDatumOfTolerLabels", header: "XCAFDoc_DimTolTool.hxx".}
proc getDatumWithObjectOfTolerLabels*(this: XCAFDocDimTolTool;
                                     theDimTolL: TDF_Label;
                                     theDatums: var TDF_LabelSequence): bool {.
    noSideEffect, importcpp: "GetDatumWithObjectOfTolerLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc getTolerOfDatumLabels*(this: XCAFDocDimTolTool; theDatumL: TDF_Label;
                           theTols: var TDF_LabelSequence): bool {.noSideEffect,
    importcpp: "GetTolerOfDatumLabels", header: "XCAFDoc_DimTolTool.hxx".}
proc getRefDatumLabel*(this: XCAFDocDimTolTool; theShapeL: TDF_Label;
                      theDatum: var TDF_LabelSequence): bool {.noSideEffect,
    importcpp: "GetRefDatumLabel", header: "XCAFDoc_DimTolTool.hxx".}
proc isLocked*(this: XCAFDocDimTolTool; theViewL: TDF_Label): bool {.noSideEffect,
    importcpp: "IsLocked", header: "XCAFDoc_DimTolTool.hxx".}
proc lock*(this: XCAFDocDimTolTool; theViewL: TDF_Label) {.noSideEffect,
    importcpp: "Lock", header: "XCAFDoc_DimTolTool.hxx".}
proc getGDTPresentations*(this: XCAFDocDimTolTool; theGDTLabelToShape: var NCollectionIndexedDataMap[
    TDF_Label, TopoDS_Shape, TDF_LabelMapHasher]) {.noSideEffect,
    importcpp: "GetGDTPresentations", header: "XCAFDoc_DimTolTool.hxx".}
proc setGDTPresentations*(this: var XCAFDocDimTolTool; theGDTLabelToPrs: var NCollectionIndexedDataMap[
    TDF_Label, TopoDS_Shape, TDF_LabelMapHasher]) {.
    importcpp: "SetGDTPresentations", header: "XCAFDoc_DimTolTool.hxx".}
proc unlock*(this: XCAFDocDimTolTool; theViewL: TDF_Label) {.noSideEffect,
    importcpp: "Unlock", header: "XCAFDoc_DimTolTool.hxx".}
proc id*(this: XCAFDocDimTolTool): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_DimTolTool.hxx".}
proc dumpJson*(this: XCAFDocDimTolTool; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFDoc_DimTolTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_DimTolTool , TDataStd_GenericEmpty ) private : opencascade :: handle < XCAFDoc_ShapeTool > [end of template] myShapeTool ;
## Error: token expected: ) but got: ,!!!















































