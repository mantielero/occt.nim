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


proc getReal*(theFunction: Handle[TFunctionFunction]; thePosition: int): Handle[
    TDataStdReal] {.importcpp: "DNaming::GetReal(@)", header: "DNaming.hxx".}
proc getInteger*(theFunction: Handle[TFunctionFunction]; thePosition: int): Handle[
    TDataStdInteger] {.importcpp: "DNaming::GetInteger(@)", header: "DNaming.hxx".}
proc getString*(theFunction: Handle[TFunctionFunction]; thePosition: int): Handle[
    TDataStdName] {.importcpp: "DNaming::GetString(@)", header: "DNaming.hxx".}
proc computeAxis*(theNS: Handle[TNamingNamedShape]; theAx1: var Ax1): bool {.
    importcpp: "DNaming::ComputeAxis(@)", header: "DNaming.hxx".}
proc getFunctionResult*(theFunction: Handle[TFunctionFunction]): Handle[
    TNamingNamedShape] {.importcpp: "DNaming::GetFunctionResult(@)",
                        header: "DNaming.hxx".}
proc getObjectArg*(theFunction: Handle[TFunctionFunction]; thePosition: int): Handle[
    TDataStdUAttribute] {.importcpp: "DNaming::GetObjectArg(@)",
                         header: "DNaming.hxx".}
proc setObjectArg*(theFunction: Handle[TFunctionFunction]; thePosition: int;
                  theNewValue: Handle[TDataStdUAttribute]) {.
    importcpp: "DNaming::SetObjectArg(@)", header: "DNaming.hxx".}
proc getObjectValue*(theObject: Handle[TDataStdUAttribute]): Handle[
    TNamingNamedShape] {.importcpp: "DNaming::GetObjectValue(@)",
                        header: "DNaming.hxx".}
proc getLastFunction*(theObject: Handle[TDataStdUAttribute]): Handle[
    TFunctionFunction] {.importcpp: "DNaming::GetLastFunction(@)",
                        header: "DNaming.hxx".}
proc getFirstFunction*(theObject: Handle[TDataStdUAttribute]): Handle[
    TFunctionFunction] {.importcpp: "DNaming::GetFirstFunction(@)",
                        header: "DNaming.hxx".}
proc getPrevFunction*(theFunction: Handle[TFunctionFunction]): Handle[
    TFunctionFunction] {.importcpp: "DNaming::GetPrevFunction(@)",
                        header: "DNaming.hxx".}
proc getObjectFromFunction*(theFunction: Handle[TFunctionFunction]): Handle[
    TDataStdUAttribute] {.importcpp: "DNaming::GetObjectFromFunction(@)",
                         header: "DNaming.hxx".}
proc isAttachment*(theObject: Handle[TDataStdUAttribute]): bool {.
    importcpp: "DNaming::IsAttachment(@)", header: "DNaming.hxx".}
proc getAttachmentsContext*(theObject: Handle[TDataStdUAttribute]): Handle[
    TNamingNamedShape] {.importcpp: "DNaming::GetAttachmentsContext(@)",
                        header: "DNaming.hxx".}
proc computeSweepDir*(theShape: TopoDS_Shape; theAxis: var Ax1): bool {.
    importcpp: "DNaming::ComputeSweepDir(@)", header: "DNaming.hxx".}
proc loadAndOrientModifiedShapes*(makeShape: var BRepBuilderAPI_MakeShape;
                                 shapeIn: TopoDS_Shape;
                                 generatedFrom: TopAbsShapeEnum;
                                 buider: var TNamingBuilder;
                                 subShapesOfResult: TopToolsDataMapOfShapeShape) {.
    importcpp: "DNaming::LoadAndOrientModifiedShapes(@)", header: "DNaming.hxx".}
proc loadAndOrientGeneratedShapes*(makeShape: var BRepBuilderAPI_MakeShape;
                                  shapeIn: TopoDS_Shape;
                                  generatedFrom: TopAbsShapeEnum;
                                  buider: var TNamingBuilder; subShapesOfResult: TopToolsDataMapOfShapeShape) {.
    importcpp: "DNaming::LoadAndOrientGeneratedShapes(@)", header: "DNaming.hxx".}
proc loadDeletedShapes*(makeShape: var BRepBuilderAPI_MakeShape;
                       shapeIn: TopoDS_Shape; kindOfDeletedShape: TopAbsShapeEnum;
                       buider: var TNamingBuilder) {.
    importcpp: "DNaming::LoadDeletedShapes(@)", header: "DNaming.hxx".}
proc loadResult*(theLabel: TDF_Label; ms: var BRepAlgoAPI_BooleanOperation) {.
    importcpp: "DNaming::LoadResult(@)", header: "DNaming.hxx".}
proc currentShape*(shapeEntry: StandardCString; data: Handle[TDF_Data]): TopoDS_Shape {.
    importcpp: "DNaming::CurrentShape(@)", header: "DNaming.hxx".}
proc getShape*(shapeEntry: StandardCString; data: Handle[TDF_Data];
              shapes: var TopToolsListOfShape) {.importcpp: "DNaming::GetShape(@)",
    header: "DNaming.hxx".}
proc getEntry*(shape: TopoDS_Shape; data: Handle[TDF_Data]; theStatus: var int): TCollectionAsciiString {.
    importcpp: "DNaming::GetEntry(@)", header: "DNaming.hxx".}
proc loadImportedShape*(theResultLabel: TDF_Label; theShape: TopoDS_Shape) {.
    importcpp: "DNaming::LoadImportedShape(@)", header: "DNaming.hxx".}
proc loadPrime*(theResultLabel: TDF_Label; theShape: TopoDS_Shape) {.
    importcpp: "DNaming::LoadPrime(@)", header: "DNaming.hxx".}
proc allCommands*(di: var DrawInterpretor) {.importcpp: "DNaming::AllCommands(@)",
    header: "DNaming.hxx".}
proc basicCommands*(di: var DrawInterpretor) {.
    importcpp: "DNaming::BasicCommands(@)", header: "DNaming.hxx".}
proc toolsCommands*(di: var DrawInterpretor) {.
    importcpp: "DNaming::ToolsCommands(@)", header: "DNaming.hxx".}
proc selectionCommands*(di: var DrawInterpretor) {.
    importcpp: "DNaming::SelectionCommands(@)", header: "DNaming.hxx".}
proc modelingCommands*(di: var DrawInterpretor) {.
    importcpp: "DNaming::ModelingCommands(@)", header: "DNaming.hxx".}
