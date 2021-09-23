##  Created on: 1997-01-08
##  Created by: VAUTHIER Jean-Claude
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_ShapeEnum,
  ../TopTools/TopTools_DataMapOfShapeShape, ../Standard/Standard_CString,
  ../TopTools/TopTools_ListOfShape, ../Draw/Draw_Interpretor

discard "forward decl of TDataStd_Real"
discard "forward decl of TFunction_Function"
discard "forward decl of TDataStd_Integer"
discard "forward decl of TDataStd_Name"
discard "forward decl of TNaming_NamedShape"
discard "forward decl of gp_Ax1"
discard "forward decl of TDataStd_UAttribute"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepBuilderAPI_MakeShape"
discard "forward decl of TNaming_Builder"
discard "forward decl of TDF_Label"
discard "forward decl of BRepAlgoAPI_BooleanOperation"
discard "forward decl of TDF_Data"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of DNaming_BoxDriver"
discard "forward decl of DNaming_CylinderDriver"
discard "forward decl of DNaming_SphereDriver"
discard "forward decl of DNaming_SelectionDriver"
discard "forward decl of DNaming_BooleanOperationDriver"
discard "forward decl of DNaming_FilletDriver"
discard "forward decl of DNaming_TransformationDriver"
discard "forward decl of DNaming_PrismDriver"
discard "forward decl of DNaming_RevolutionDriver"
discard "forward decl of DNaming_PointDriver"
discard "forward decl of DNaming_Line3DDriver"
type
  DNaming* {.importcpp: "DNaming", header: "DNaming.hxx", bycopy.} = object


proc GetReal*(theFunction: handle[TFunction_Function];
             thePosition: Standard_Integer): handle[TDataStd_Real] {.
    importcpp: "DNaming::GetReal(@)", header: "DNaming.hxx".}
proc GetInteger*(theFunction: handle[TFunction_Function];
                thePosition: Standard_Integer): handle[TDataStd_Integer] {.
    importcpp: "DNaming::GetInteger(@)", header: "DNaming.hxx".}
proc GetString*(theFunction: handle[TFunction_Function];
               thePosition: Standard_Integer): handle[TDataStd_Name] {.
    importcpp: "DNaming::GetString(@)", header: "DNaming.hxx".}
proc ComputeAxis*(theNS: handle[TNaming_NamedShape]; theAx1: var gp_Ax1): Standard_Boolean {.
    importcpp: "DNaming::ComputeAxis(@)", header: "DNaming.hxx".}
proc GetFunctionResult*(theFunction: handle[TFunction_Function]): handle[
    TNaming_NamedShape] {.importcpp: "DNaming::GetFunctionResult(@)",
                         header: "DNaming.hxx".}
proc GetObjectArg*(theFunction: handle[TFunction_Function];
                  thePosition: Standard_Integer): handle[TDataStd_UAttribute] {.
    importcpp: "DNaming::GetObjectArg(@)", header: "DNaming.hxx".}
proc SetObjectArg*(theFunction: handle[TFunction_Function];
                  thePosition: Standard_Integer;
                  theNewValue: handle[TDataStd_UAttribute]) {.
    importcpp: "DNaming::SetObjectArg(@)", header: "DNaming.hxx".}
proc GetObjectValue*(theObject: handle[TDataStd_UAttribute]): handle[
    TNaming_NamedShape] {.importcpp: "DNaming::GetObjectValue(@)",
                         header: "DNaming.hxx".}
proc GetLastFunction*(theObject: handle[TDataStd_UAttribute]): handle[
    TFunction_Function] {.importcpp: "DNaming::GetLastFunction(@)",
                         header: "DNaming.hxx".}
proc GetFirstFunction*(theObject: handle[TDataStd_UAttribute]): handle[
    TFunction_Function] {.importcpp: "DNaming::GetFirstFunction(@)",
                         header: "DNaming.hxx".}
proc GetPrevFunction*(theFunction: handle[TFunction_Function]): handle[
    TFunction_Function] {.importcpp: "DNaming::GetPrevFunction(@)",
                         header: "DNaming.hxx".}
proc GetObjectFromFunction*(theFunction: handle[TFunction_Function]): handle[
    TDataStd_UAttribute] {.importcpp: "DNaming::GetObjectFromFunction(@)",
                          header: "DNaming.hxx".}
proc IsAttachment*(theObject: handle[TDataStd_UAttribute]): Standard_Boolean {.
    importcpp: "DNaming::IsAttachment(@)", header: "DNaming.hxx".}
proc GetAttachmentsContext*(theObject: handle[TDataStd_UAttribute]): handle[
    TNaming_NamedShape] {.importcpp: "DNaming::GetAttachmentsContext(@)",
                         header: "DNaming.hxx".}
proc ComputeSweepDir*(theShape: TopoDS_Shape; theAxis: var gp_Ax1): Standard_Boolean {.
    importcpp: "DNaming::ComputeSweepDir(@)", header: "DNaming.hxx".}
proc LoadAndOrientModifiedShapes*(MakeShape: var BRepBuilderAPI_MakeShape;
                                 ShapeIn: TopoDS_Shape;
                                 GeneratedFrom: TopAbs_ShapeEnum;
                                 Buider: var TNaming_Builder; SubShapesOfResult: TopTools_DataMapOfShapeShape) {.
    importcpp: "DNaming::LoadAndOrientModifiedShapes(@)", header: "DNaming.hxx".}
proc LoadAndOrientGeneratedShapes*(MakeShape: var BRepBuilderAPI_MakeShape;
                                  ShapeIn: TopoDS_Shape;
                                  GeneratedFrom: TopAbs_ShapeEnum;
                                  Buider: var TNaming_Builder; SubShapesOfResult: TopTools_DataMapOfShapeShape) {.
    importcpp: "DNaming::LoadAndOrientGeneratedShapes(@)", header: "DNaming.hxx".}
proc LoadDeletedShapes*(MakeShape: var BRepBuilderAPI_MakeShape;
                       ShapeIn: TopoDS_Shape;
                       KindOfDeletedShape: TopAbs_ShapeEnum;
                       Buider: var TNaming_Builder) {.
    importcpp: "DNaming::LoadDeletedShapes(@)", header: "DNaming.hxx".}
proc LoadResult*(theLabel: TDF_Label; MS: var BRepAlgoAPI_BooleanOperation) {.
    importcpp: "DNaming::LoadResult(@)", header: "DNaming.hxx".}
proc CurrentShape*(ShapeEntry: Standard_CString; Data: handle[TDF_Data]): TopoDS_Shape {.
    importcpp: "DNaming::CurrentShape(@)", header: "DNaming.hxx".}
proc GetShape*(ShapeEntry: Standard_CString; Data: handle[TDF_Data];
              Shapes: var TopTools_ListOfShape) {.
    importcpp: "DNaming::GetShape(@)", header: "DNaming.hxx".}
proc GetEntry*(Shape: TopoDS_Shape; Data: handle[TDF_Data];
              theStatus: var Standard_Integer): TCollection_AsciiString {.
    importcpp: "DNaming::GetEntry(@)", header: "DNaming.hxx".}
proc LoadImportedShape*(theResultLabel: TDF_Label; theShape: TopoDS_Shape) {.
    importcpp: "DNaming::LoadImportedShape(@)", header: "DNaming.hxx".}
proc LoadPrime*(theResultLabel: TDF_Label; theShape: TopoDS_Shape) {.
    importcpp: "DNaming::LoadPrime(@)", header: "DNaming.hxx".}
proc AllCommands*(DI: var Draw_Interpretor) {.importcpp: "DNaming::AllCommands(@)",
    header: "DNaming.hxx".}
proc BasicCommands*(DI: var Draw_Interpretor) {.
    importcpp: "DNaming::BasicCommands(@)", header: "DNaming.hxx".}
proc ToolsCommands*(DI: var Draw_Interpretor) {.
    importcpp: "DNaming::ToolsCommands(@)", header: "DNaming.hxx".}
proc SelectionCommands*(DI: var Draw_Interpretor) {.
    importcpp: "DNaming::SelectionCommands(@)", header: "DNaming.hxx".}
proc ModelingCommands*(DI: var Draw_Interpretor) {.
    importcpp: "DNaming::ModelingCommands(@)", header: "DNaming.hxx".}