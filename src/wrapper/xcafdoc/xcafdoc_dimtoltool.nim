import xcafdoc_types

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

proc newXCAFDoc_DimTolTool*(): XCAFDoc_DimTolTool {.cdecl, constructor,
    importcpp: "XCAFDoc_DimTolTool(@)", header: "XCAFDoc_DimTolTool.hxx".}
proc Set*(L: TDF_Label): handle[XCAFDoc_DimTolTool] {.cdecl,
    importcpp: "XCAFDoc_DimTolTool::Set(@)", header: "XCAFDoc_DimTolTool.hxx".}
proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_DimTolTool::GetID(@)",
                            header: "XCAFDoc_DimTolTool.hxx".}
proc BaseLabel*(this: XCAFDoc_DimTolTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "BaseLabel", header: "XCAFDoc_DimTolTool.hxx".}
proc ShapeTool*(this: var XCAFDoc_DimTolTool): handle[XCAFDoc_ShapeTool] {.cdecl,
    importcpp: "ShapeTool", header: "XCAFDoc_DimTolTool.hxx".}
proc IsDimension*(this: XCAFDoc_DimTolTool; theLab: TDF_Label): bool {.noSideEffect,
    cdecl, importcpp: "IsDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc GetDimensionLabels*(this: XCAFDoc_DimTolTool; theLabels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetDimensionLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc SetDimension*(this: XCAFDoc_DimTolTool; theFirstLS: TDF_LabelSequence;
                  theSecondLS: TDF_LabelSequence; theDimL: TDF_Label) {.
    noSideEffect, cdecl, importcpp: "SetDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc SetDimension*(this: XCAFDoc_DimTolTool; theFirstL: TDF_Label;
                  theSecondL: TDF_Label; theDimL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "SetDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc SetDimension*(this: XCAFDoc_DimTolTool; theL: TDF_Label; theDimL: TDF_Label) {.
    noSideEffect, cdecl, importcpp: "SetDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc GetRefDimensionLabels*(this: XCAFDoc_DimTolTool; theShapeL: TDF_Label;
                           theDimensions: var TDF_LabelSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetRefDimensionLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc AddDimension*(this: var XCAFDoc_DimTolTool): TDF_Label {.cdecl,
    importcpp: "AddDimension", header: "XCAFDoc_DimTolTool.hxx".}
proc IsGeomTolerance*(this: XCAFDoc_DimTolTool; theLab: TDF_Label): bool {.
    noSideEffect, cdecl, importcpp: "IsGeomTolerance",
    header: "XCAFDoc_DimTolTool.hxx".}
proc GetGeomToleranceLabels*(this: XCAFDoc_DimTolTool;
                            theLabels: var TDF_LabelSequence) {.noSideEffect, cdecl,
    importcpp: "GetGeomToleranceLabels", header: "XCAFDoc_DimTolTool.hxx".}
proc SetGeomTolerance*(this: XCAFDoc_DimTolTool; theL: TDF_Label;
                      theGeomTolL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "SetGeomTolerance", header: "XCAFDoc_DimTolTool.hxx".}
proc SetGeomTolerance*(this: XCAFDoc_DimTolTool; theL: TDF_LabelSequence;
                      theGeomTolL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "SetGeomTolerance", header: "XCAFDoc_DimTolTool.hxx".}
proc GetRefGeomToleranceLabels*(this: XCAFDoc_DimTolTool; theShapeL: TDF_Label;
                               theDimTols: var TDF_LabelSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetRefGeomToleranceLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc AddGeomTolerance*(this: var XCAFDoc_DimTolTool): TDF_Label {.cdecl,
    importcpp: "AddGeomTolerance", header: "XCAFDoc_DimTolTool.hxx".}
proc IsDimTol*(this: XCAFDoc_DimTolTool; theLab: TDF_Label): bool {.noSideEffect,
    cdecl, importcpp: "IsDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc GetDimTolLabels*(this: XCAFDoc_DimTolTool; Labels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetDimTolLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc FindDimTol*(this: XCAFDoc_DimTolTool; theKind: cint;
                theVal: handle[TColStd_HArray1OfReal];
                theName: handle[TCollection_HAsciiString];
                theDescription: handle[TCollection_HAsciiString];
                lab: var TDF_Label): bool {.noSideEffect, cdecl,
                                        importcpp: "FindDimTol",
                                        header: "XCAFDoc_DimTolTool.hxx".}
proc FindDimTol*(this: XCAFDoc_DimTolTool; theKind: cint;
                theVal: handle[TColStd_HArray1OfReal];
                theName: handle[TCollection_HAsciiString];
                theDescription: handle[TCollection_HAsciiString]): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc AddDimTol*(this: XCAFDoc_DimTolTool; theKind: cint;
               theVal: handle[TColStd_HArray1OfReal];
               theName: handle[TCollection_HAsciiString];
               theDescription: handle[TCollection_HAsciiString]): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc SetDimTol*(this: XCAFDoc_DimTolTool; theL: TDF_Label; theDimTolL: TDF_Label) {.
    noSideEffect, cdecl, importcpp: "SetDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc SetDimTol*(this: XCAFDoc_DimTolTool; theL: TDF_Label; theKind: cint;
               theVal: handle[TColStd_HArray1OfReal];
               theName: handle[TCollection_HAsciiString];
               theDescription: handle[TCollection_HAsciiString]): TDF_Label {.
    noSideEffect, cdecl, importcpp: "SetDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc GetRefShapeLabel*(this: XCAFDoc_DimTolTool; theL: TDF_Label;
                      theShapeLFirst: var TDF_LabelSequence;
                      theShapeLSecond: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetRefShapeLabel", header: "XCAFDoc_DimTolTool.hxx".}
proc GetDimTol*(this: XCAFDoc_DimTolTool; theDimTolL: TDF_Label; theKind: var cint;
               theVal: var handle[TColStd_HArray1OfReal];
               theName: var handle[TCollection_HAsciiString];
               theDescription: var handle[TCollection_HAsciiString]): bool {.
    noSideEffect, cdecl, importcpp: "GetDimTol", header: "XCAFDoc_DimTolTool.hxx".}
proc IsDatum*(this: XCAFDoc_DimTolTool; lab: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsDatum", header: "XCAFDoc_DimTolTool.hxx".}
proc GetDatumLabels*(this: XCAFDoc_DimTolTool; Labels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetDatumLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc FindDatum*(this: XCAFDoc_DimTolTool;
               theName: handle[TCollection_HAsciiString];
               theDescription: handle[TCollection_HAsciiString];
               theIdentification: handle[TCollection_HAsciiString];
               lab: var TDF_Label): bool {.noSideEffect, cdecl,
                                       importcpp: "FindDatum",
                                       header: "XCAFDoc_DimTolTool.hxx".}
proc AddDatum*(this: XCAFDoc_DimTolTool; theName: handle[TCollection_HAsciiString];
              theDescription: handle[TCollection_HAsciiString];
              theIdentification: handle[TCollection_HAsciiString]): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddDatum", header: "XCAFDoc_DimTolTool.hxx".}
proc AddDatum*(this: var XCAFDoc_DimTolTool): TDF_Label {.cdecl,
    importcpp: "AddDatum", header: "XCAFDoc_DimTolTool.hxx".}
proc SetDatum*(this: XCAFDoc_DimTolTool; theShapeLabels: TDF_LabelSequence;
              theDatumL: TDF_Label) {.noSideEffect, cdecl, importcpp: "SetDatum",
                                    header: "XCAFDoc_DimTolTool.hxx".}
proc SetDatum*(this: XCAFDoc_DimTolTool; theL: TDF_Label; theTolerL: TDF_Label;
              theName: handle[TCollection_HAsciiString];
              theDescription: handle[TCollection_HAsciiString];
              theIdentification: handle[TCollection_HAsciiString]) {.noSideEffect,
    cdecl, importcpp: "SetDatum", header: "XCAFDoc_DimTolTool.hxx".}
proc SetDatumToGeomTol*(this: XCAFDoc_DimTolTool; theDatumL: TDF_Label;
                       theTolerL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "SetDatumToGeomTol", header: "XCAFDoc_DimTolTool.hxx".}
proc GetDatum*(this: XCAFDoc_DimTolTool; theDatumL: TDF_Label;
              theName: var handle[TCollection_HAsciiString];
              theDescription: var handle[TCollection_HAsciiString];
              theIdentification: var handle[TCollection_HAsciiString]): bool {.
    noSideEffect, cdecl, importcpp: "GetDatum", header: "XCAFDoc_DimTolTool.hxx".}
proc GetDatumOfTolerLabels*(this: XCAFDoc_DimTolTool; theDimTolL: TDF_Label;
                           theDatums: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetDatumOfTolerLabels", header: "XCAFDoc_DimTolTool.hxx".}
proc GetDatumWithObjectOfTolerLabels*(this: XCAFDoc_DimTolTool;
                                     theDimTolL: TDF_Label;
                                     theDatums: var TDF_LabelSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetDatumWithObjectOfTolerLabels",
    header: "XCAFDoc_DimTolTool.hxx".}
proc GetTolerOfDatumLabels*(this: XCAFDoc_DimTolTool; theDatumL: TDF_Label;
                           theTols: var TDF_LabelSequence): bool {.noSideEffect,
    cdecl, importcpp: "GetTolerOfDatumLabels", header: "XCAFDoc_DimTolTool.hxx".}
proc GetRefDatumLabel*(this: XCAFDoc_DimTolTool; theShapeL: TDF_Label;
                      theDatum: var TDF_LabelSequence): bool {.noSideEffect, cdecl,
    importcpp: "GetRefDatumLabel", header: "XCAFDoc_DimTolTool.hxx".}
proc IsLocked*(this: XCAFDoc_DimTolTool; theViewL: TDF_Label): bool {.noSideEffect,
    cdecl, importcpp: "IsLocked", header: "XCAFDoc_DimTolTool.hxx".}
proc Lock*(this: XCAFDoc_DimTolTool; theViewL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "Lock", header: "XCAFDoc_DimTolTool.hxx".}
proc GetGDTPresentations*(this: XCAFDoc_DimTolTool; theGDTLabelToShape: var NCollection_IndexedDataMap[
    TDF_Label, TopoDS_Shape, TDF_LabelMapHasher]) {.noSideEffect, cdecl,
    importcpp: "GetGDTPresentations", header: "XCAFDoc_DimTolTool.hxx".}
proc SetGDTPresentations*(this: var XCAFDoc_DimTolTool; theGDTLabelToPrs: var NCollection_IndexedDataMap[
    TDF_Label, TopoDS_Shape, TDF_LabelMapHasher]) {.cdecl,
    importcpp: "SetGDTPresentations", header: "XCAFDoc_DimTolTool.hxx".}
proc Unlock*(this: XCAFDoc_DimTolTool; theViewL: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "Unlock", header: "XCAFDoc_DimTolTool.hxx".}
proc ID*(this: XCAFDoc_DimTolTool): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_DimTolTool.hxx".}
proc DumpJson*(this: XCAFDoc_DimTolTool; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_DimTolTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_DimTolTool , TDataStd_GenericEmpty ) private : opencascade :: handle < XCAFDoc_ShapeTool > [end of template] myShapeTool ;
## Error: token expected: ) but got: ,!!!
