import ../tdf/tdf_types
import ../tcolstd/tcolstd_types
import ../topods/topods_types
import xcafdoc_types
import ../standard/standard_types
import ../ncollection/ncollection_types
import ../tcollection/tcollection_types



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





proc newXCAFDocDimTolTool*(): XCAFDocDimTolTool {.cdecl, constructor,
    importcpp: "XCAFDoc_DimTolTool(@)", header: "XCAFDoc_DimTolTool.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocDimTolTool] {.cdecl,
    importcpp: "XCAFDoc_DimTolTool::Set(@)", header: "XCAFDoc_DimTolTool.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_DimTolTool::GetID(@)",
                           header: "XCAFDoc_DimTolTool.hxx".}
proc baseLabel*(this: XCAFDocDimTolTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "BaseLabel", header: "XCAFDoc_DimTolTool.hxx".}
proc shapeTool*(this: var XCAFDocDimTolTool): Handle[XCAFDocShapeTool] {.cdecl,
    importcpp: "ShapeTool", header: "XCAFDoc_DimTolTool.hxx".}
proc isDimension*(this: XCAFDocDimTolTool; theLab: TDF_Label): bool {.noSideEffect,
    cdecl, importcpp: "IsDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc getDimensionLabels*(this: XCAFDocDimTolTool; theLabels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetDimensionLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc setDimension*(this: XCAFDocDimTolTool; theFirstLS: TDF_LabelSequence;
                  theSecondLS: TDF_LabelSequence; theDimL: TDF_Label) {.
    noSideEffect, cdecl, importcpp: "SetDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc setDimension*(this: XCAFDocDimTolTool; theFirstL: TDF_Label;
                  theSecondL: TDF_Label; theDimL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "SetDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc setDimension*(this: XCAFDocDimTolTool; theL: TDF_Label; theDimL: TDF_Label) {.
    noSideEffect, cdecl, importcpp: "SetDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc getRefDimensionLabels*(this: XCAFDocDimTolTool; theShapeL: TDF_Label;
                           theDimensions: var TDF_LabelSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetRefDimensionLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc addDimension*(this: var XCAFDocDimTolTool): TDF_Label {.cdecl,
    importcpp: "AddDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc isGeomTolerance*(this: XCAFDocDimTolTool; theLab: TDF_Label): bool {.
    noSideEffect, cdecl, importcpp: "IsGeomTolerance",
    header: "XCAFDoc_DimTolTool.hxx".}
proc getGeomToleranceLabels*(this: XCAFDocDimTolTool;
                            theLabels: var TDF_LabelSequence) {.noSideEffect, cdecl,
    importcpp: "GetGeomToleranceLabels", header: "XCAFDoc_DimTolTool.hxx".}
proc setGeomTolerance*(this: XCAFDocDimTolTool; theL: TDF_Label;
                      theGeomTolL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "SetGeomTolerance", header: "XCAFDoc_DimTolTool.hxx".}
proc setGeomTolerance*(this: XCAFDocDimTolTool; theL: TDF_LabelSequence;
                      theGeomTolL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "SetGeomTolerance", header: "XCAFDoc_DimTolTool.hxx".}
proc getRefGeomToleranceLabels*(this: XCAFDocDimTolTool; theShapeL: TDF_Label;
                               theDimTols: var TDF_LabelSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetRefGeomToleranceLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc addGeomTolerance*(this: var XCAFDocDimTolTool): TDF_Label {.cdecl,
    importcpp: "AddGeomTolerance", header: "XCAFDoc_DimTolTool.hxx".}
proc isDimTol*(this: XCAFDocDimTolTool; theLab: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc getDimTolLabels*(this: XCAFDocDimTolTool; labels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetDimTolLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc findDimTol*(this: XCAFDocDimTolTool; theKind: cint;
                theVal: Handle[TColStdHArray1OfReal];
                theName: Handle[TCollectionHAsciiString];
                theDescription: Handle[TCollectionHAsciiString];
                lab: var TDF_Label): bool {.noSideEffect, cdecl,
                                        importcpp: "FindDimTol",
                                        header: "XCAFDoc_DimTolTool.hxx".}
proc findDimTol*(this: XCAFDocDimTolTool; theKind: cint;
                theVal: Handle[TColStdHArray1OfReal];
                theName: Handle[TCollectionHAsciiString];
                theDescription: Handle[TCollectionHAsciiString]): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc addDimTol*(this: XCAFDocDimTolTool; theKind: cint;
               theVal: Handle[TColStdHArray1OfReal];
               theName: Handle[TCollectionHAsciiString];
               theDescription: Handle[TCollectionHAsciiString]): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc setDimTol*(this: XCAFDocDimTolTool; theL: TDF_Label; theDimTolL: TDF_Label) {.
    noSideEffect, cdecl, importcpp: "SetDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc setDimTol*(this: XCAFDocDimTolTool; theL: TDF_Label; theKind: cint;
               theVal: Handle[TColStdHArray1OfReal];
               theName: Handle[TCollectionHAsciiString];
               theDescription: Handle[TCollectionHAsciiString]): TDF_Label {.
    noSideEffect, cdecl, importcpp: "SetDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc getRefShapeLabel*(this: XCAFDocDimTolTool; theL: TDF_Label;
                      theShapeLFirst: var TDF_LabelSequence;
                      theShapeLSecond: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetRefShapeLabel", header: "XCAFDoc_DimTolTool.hxx".}
proc getDimTol*(this: XCAFDocDimTolTool; theDimTolL: TDF_Label; theKind: var cint;
               theVal: var Handle[TColStdHArray1OfReal];
               theName: var Handle[TCollectionHAsciiString];
               theDescription: var Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, cdecl, importcpp: "GetDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc isDatum*(this: XCAFDocDimTolTool; lab: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsDatum", header: "XCAFDoc_DimTolTool.hxx".}
proc getDatumLabels*(this: XCAFDocDimTolTool; labels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetDatumLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc findDatum*(this: XCAFDocDimTolTool; theName: Handle[TCollectionHAsciiString];
               theDescription: Handle[TCollectionHAsciiString];
               theIdentification: Handle[TCollectionHAsciiString];
               lab: var TDF_Label): bool {.noSideEffect, cdecl,
                                       importcpp: "FindDatum",
                                       header: "XCAFDoc_DimTolTool.hxx".}
proc addDatum*(this: XCAFDocDimTolTool; theName: Handle[TCollectionHAsciiString];
              theDescription: Handle[TCollectionHAsciiString];
              theIdentification: Handle[TCollectionHAsciiString]): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddDatum", header: "XCAFDoc_DimTolTool.hxx".}
proc addDatum*(this: var XCAFDocDimTolTool): TDF_Label {.cdecl, importcpp: "AddDatum",
    header: "XCAFDoc_DimTolTool.hxx".}
proc setDatum*(this: XCAFDocDimTolTool; theShapeLabels: TDF_LabelSequence;
              theDatumL: TDF_Label) {.noSideEffect, cdecl, importcpp: "SetDatum",
                                    header: "XCAFDoc_DimTolTool.hxx".}
proc setDatum*(this: XCAFDocDimTolTool; theL: TDF_Label; theTolerL: TDF_Label;
              theName: Handle[TCollectionHAsciiString];
              theDescription: Handle[TCollectionHAsciiString];
              theIdentification: Handle[TCollectionHAsciiString]) {.noSideEffect,
    cdecl, importcpp: "SetDatum", header: "XCAFDoc_DimTolTool.hxx".}
proc setDatumToGeomTol*(this: XCAFDocDimTolTool; theDatumL: TDF_Label;
                       theTolerL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "SetDatumToGeomTol", header: "XCAFDoc_DimTolTool.hxx".}
proc getDatum*(this: XCAFDocDimTolTool; theDatumL: TDF_Label;
              theName: var Handle[TCollectionHAsciiString];
              theDescription: var Handle[TCollectionHAsciiString];
              theIdentification: var Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, cdecl, importcpp: "GetDatum", header: "XCAFDoc_DimTolTool.hxx".}
proc getDatumOfTolerLabels*(this: XCAFDocDimTolTool; theDimTolL: TDF_Label;
                           theDatums: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetDatumOfTolerLabels", header: "XCAFDoc_DimTolTool.hxx".}
proc getDatumWithObjectOfTolerLabels*(this: XCAFDocDimTolTool;
                                     theDimTolL: TDF_Label;
                                     theDatums: var TDF_LabelSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetDatumWithObjectOfTolerLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc getTolerOfDatumLabels*(this: XCAFDocDimTolTool; theDatumL: TDF_Label;
                           theTols: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetTolerOfDatumLabels", header: "XCAFDoc_DimTolTool.hxx".}
proc getRefDatumLabel*(this: XCAFDocDimTolTool; theShapeL: TDF_Label;
                      theDatum: var TDF_LabelSequence): bool {.noSideEffect, cdecl,
    importcpp: "GetRefDatumLabel", header: "XCAFDoc_DimTolTool.hxx".}
proc isLocked*(this: XCAFDocDimTolTool; theViewL: TDF_Label): bool {.noSideEffect,
    cdecl, importcpp: "IsLocked", header: "XCAFDoc_DimTolTool.hxx".}
proc lock*(this: XCAFDocDimTolTool; theViewL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "Lock", header: "XCAFDoc_DimTolTool.hxx".}
proc getGDTPresentations*(this: XCAFDocDimTolTool; theGDTLabelToShape: var NCollectionIndexedDataMap[
    TDF_Label, TopoDS_Shape, TDF_LabelMapHasher]) {.noSideEffect, cdecl,
    importcpp: "GetGDTPresentations", header: "XCAFDoc_DimTolTool.hxx".}
proc setGDTPresentations*(this: var XCAFDocDimTolTool; theGDTLabelToPrs: var NCollectionIndexedDataMap[
    TDF_Label, TopoDS_Shape, TDF_LabelMapHasher]) {.cdecl,
    importcpp: "SetGDTPresentations", header: "XCAFDoc_DimTolTool.hxx".}
proc unlock*(this: XCAFDocDimTolTool; theViewL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "Unlock", header: "XCAFDoc_DimTolTool.hxx".}
proc id*(this: XCAFDocDimTolTool): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_DimTolTool.hxx".}
proc dumpJson*(this: XCAFDocDimTolTool; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_DimTolTool.hxx".}

