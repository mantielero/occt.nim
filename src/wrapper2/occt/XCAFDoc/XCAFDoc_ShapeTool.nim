##  Created on: 2000-06-15
##  Created by: Edward AGAPOV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, XCAFDoc_DataMapOfShapeLabel,
  ../Standard/Standard_Boolean, ../TDataStd/TDataStd_NamedData,
  ../TDataStd/TDataStd_GenericEmpty, ../TDF/TDF_LabelMap,
  ../TDF/TDF_LabelSequence, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream, ../TColStd/TColStd_SequenceOfHAsciiString,
  ../TDF/TDF_AttributeSequence, ../TopTools/TopTools_SequenceOfShape

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopLoc_Location"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_GraphNode"
discard "forward decl of XCAFDoc_ShapeTool"
discard "forward decl of XCAFDoc_ShapeTool"
type
  Handle_XCAFDoc_ShapeTool* = handle[XCAFDoc_ShapeTool]

## ! A tool to store shapes in an XDE
## ! document in the form of assembly structure, and to maintain this structure.
## ! Attribute containing Shapes section of DECAF document.
## ! Provide tools for management of Shapes section.
## ! The API provided by this class allows to work with this
## ! structure regardless of its low-level implementation.
## ! All the shapes are stored on child labels of a main label which is
## ! XCAFDoc_DocumentTool::LabelShapes(). The label for assembly also has
## ! sub-labels, each of which represents the instance of
## ! another shape in that assembly (component). Such sub-label
## ! stores reference to the label of the original shape in the form
## ! of TDataStd_TreeNode with GUID XCAFDoc::ShapeRefGUID(), and its
## ! location encapsulated into the NamedShape.
## ! For correct work with an XDE document, it is necessary to use
## ! methods for analysis and methods for working with shapes.
## ! For example:
## ! if ( STool->IsAssembly(aLabel) )
## ! { Standard_Boolean subchilds = Standard_False; (default)
## ! Standard_Integer nbc = STool->NbComponents
## ! (aLabel[,subchilds]);
## ! }
## ! If subchilds is True, commands also consider sub-levels. By
## ! default, only level one is checked.
## ! In this example, number of children from the first level of
## ! assembly will be returned. Methods for creation and initialization:
## ! Constructor:
## ! XCAFDoc_ShapeTool::XCAFDoc_ShapeTool()
## ! Getting a guid:
## ! Standard_GUID GetID ();
## ! Creation (if does not exist) of ShapeTool on label L:
## ! Handle(XCAFDoc_ShapeTool) XCAFDoc_ShapeTool::Set(const TDF_Label& L)
## ! Analyze whether shape is a simple shape or an instance or a
## ! component of an assembly or it is an assembly ( methods of analysis).
## ! For example:
## ! STool->IsShape(aLabel) ;
## ! Analyze that the label represents a shape (simple
## ! shape, assembly or reference) or
## ! STool->IsTopLevel(aLabel);
## ! Analyze that the label is a label of a top-level shape.
## ! Work with simple shapes, assemblies and instances (
## ! methods for work with shapes).
## ! For example:
## ! Add shape:
## ! Standard_Boolean makeAssembly;
## ! // True to interpret a Compound as an Assembly, False to take it
## ! as a whole
## ! aLabel = STool->AddShape(aShape, makeAssembly);
## ! Get shape:
## ! TDF_Label aLabel...
## ! // A label must be present if
## ! (aLabel.IsNull()) { ... no such label : abandon .. }
## ! TopoDS_Shape aShape;
## ! aShape = STool->GetShape(aLabel);
## ! if (aShape.IsNull())
## ! { ... this label is not for a Shape ... }
## ! To get a label from shape.
## ! Standard_Boolean findInstance = Standard_False;
## ! (this is default value)
## ! aLabel = STool->FindShape(aShape [,findInstance]);
## ! if (aLabel.IsNull())
## ! { ... no label found for this shape ... }

type
  XCAFDoc_ShapeTool* {.importcpp: "XCAFDoc_ShapeTool",
                      header: "XCAFDoc_ShapeTool.hxx", bycopy.} = object of TDataStd_GenericEmpty
    myShapeLabels* {.importc: "myShapeLabels".}: XCAFDoc_DataMapOfShapeLabel
    mySubShapes* {.importc: "mySubShapes".}: XCAFDoc_DataMapOfShapeLabel
    mySimpleShapes* {.importc: "mySimpleShapes".}: XCAFDoc_DataMapOfShapeLabel
    hasSimpleShapes* {.importc: "hasSimpleShapes".}: Standard_Boolean


proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_ShapeTool::GetID(@)",
                            header: "XCAFDoc_ShapeTool.hxx".}
proc Set*(L: TDF_Label): handle[XCAFDoc_ShapeTool] {.
    importcpp: "XCAFDoc_ShapeTool::Set(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc constructXCAFDoc_ShapeTool*(): XCAFDoc_ShapeTool {.constructor,
    importcpp: "XCAFDoc_ShapeTool(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc IsTopLevel*(this: XCAFDoc_ShapeTool; L: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "IsTopLevel", header: "XCAFDoc_ShapeTool.hxx".}
proc IsFree*(L: TDF_Label): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::IsFree(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc IsShape*(L: TDF_Label): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::IsShape(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc IsSimpleShape*(L: TDF_Label): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::IsSimpleShape(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc IsReference*(L: TDF_Label): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::IsReference(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc IsAssembly*(L: TDF_Label): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::IsAssembly(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc IsComponent*(L: TDF_Label): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::IsComponent(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc IsCompound*(L: TDF_Label): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::IsCompound(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc IsSubShape*(L: TDF_Label): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::IsSubShape(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc IsSubShape*(this: XCAFDoc_ShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsSubShape", header: "XCAFDoc_ShapeTool.hxx".}
proc SearchUsingMap*(this: XCAFDoc_ShapeTool; S: TopoDS_Shape; L: var TDF_Label;
                    findWithoutLoc: Standard_Boolean;
                    findSubshape: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "SearchUsingMap", header: "XCAFDoc_ShapeTool.hxx".}
proc Search*(this: XCAFDoc_ShapeTool; S: TopoDS_Shape; L: var TDF_Label;
            findInstance: Standard_Boolean = Standard_True;
            findComponent: Standard_Boolean = Standard_True;
            findSubshape: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "Search", header: "XCAFDoc_ShapeTool.hxx".}
proc FindShape*(this: XCAFDoc_ShapeTool; S: TopoDS_Shape; L: var TDF_Label;
               findInstance: Standard_Boolean = Standard_False): Standard_Boolean {.
    noSideEffect, importcpp: "FindShape", header: "XCAFDoc_ShapeTool.hxx".}
proc FindShape*(this: XCAFDoc_ShapeTool; S: TopoDS_Shape;
               findInstance: Standard_Boolean = Standard_False): TDF_Label {.
    noSideEffect, importcpp: "FindShape", header: "XCAFDoc_ShapeTool.hxx".}
proc GetShape*(L: TDF_Label; S: var TopoDS_Shape): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::GetShape(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc GetShape*(L: TDF_Label): TopoDS_Shape {.
    importcpp: "XCAFDoc_ShapeTool::GetShape(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc NewShape*(this: XCAFDoc_ShapeTool): TDF_Label {.noSideEffect,
    importcpp: "NewShape", header: "XCAFDoc_ShapeTool.hxx".}
proc SetShape*(this: var XCAFDoc_ShapeTool; L: TDF_Label; S: TopoDS_Shape) {.
    importcpp: "SetShape", header: "XCAFDoc_ShapeTool.hxx".}
proc AddShape*(this: var XCAFDoc_ShapeTool; S: TopoDS_Shape;
              makeAssembly: Standard_Boolean = Standard_True;
              makePrepare: Standard_Boolean = Standard_True): TDF_Label {.
    importcpp: "AddShape", header: "XCAFDoc_ShapeTool.hxx".}
proc RemoveShape*(this: XCAFDoc_ShapeTool; L: TDF_Label;
                 removeCompletely: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "RemoveShape", header: "XCAFDoc_ShapeTool.hxx".}
proc Init*(this: var XCAFDoc_ShapeTool) {.importcpp: "Init",
                                      header: "XCAFDoc_ShapeTool.hxx".}
proc SetAutoNaming*(V: Standard_Boolean) {.importcpp: "XCAFDoc_ShapeTool::SetAutoNaming(@)",
                                        header: "XCAFDoc_ShapeTool.hxx".}
proc AutoNaming*(): Standard_Boolean {.importcpp: "XCAFDoc_ShapeTool::AutoNaming(@)",
                                    header: "XCAFDoc_ShapeTool.hxx".}
proc ComputeShapes*(this: var XCAFDoc_ShapeTool; L: TDF_Label) {.
    importcpp: "ComputeShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc ComputeSimpleShapes*(this: var XCAFDoc_ShapeTool) {.
    importcpp: "ComputeSimpleShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc GetShapes*(this: XCAFDoc_ShapeTool; Labels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc GetFreeShapes*(this: XCAFDoc_ShapeTool; FreeLabels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetFreeShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc GetUsers*(L: TDF_Label; Labels: var TDF_LabelSequence;
              getsubchilds: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "XCAFDoc_ShapeTool::GetUsers(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc GetLocation*(L: TDF_Label): TopLoc_Location {.
    importcpp: "XCAFDoc_ShapeTool::GetLocation(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc GetReferredShape*(L: TDF_Label; Label: var TDF_Label): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::GetReferredShape(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc NbComponents*(L: TDF_Label; getsubchilds: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "XCAFDoc_ShapeTool::NbComponents(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc GetComponents*(L: TDF_Label; Labels: var TDF_LabelSequence;
                   getsubchilds: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::GetComponents(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc AddComponent*(this: var XCAFDoc_ShapeTool; assembly: TDF_Label; comp: TDF_Label;
                  Loc: TopLoc_Location): TDF_Label {.importcpp: "AddComponent",
    header: "XCAFDoc_ShapeTool.hxx".}
proc AddComponent*(this: var XCAFDoc_ShapeTool; assembly: TDF_Label;
                  comp: TopoDS_Shape; expand: Standard_Boolean = Standard_False): TDF_Label {.
    importcpp: "AddComponent", header: "XCAFDoc_ShapeTool.hxx".}
proc RemoveComponent*(this: XCAFDoc_ShapeTool; comp: TDF_Label) {.noSideEffect,
    importcpp: "RemoveComponent", header: "XCAFDoc_ShapeTool.hxx".}
proc UpdateAssemblies*(this: var XCAFDoc_ShapeTool) {.importcpp: "UpdateAssemblies",
    header: "XCAFDoc_ShapeTool.hxx".}
proc FindSubShape*(this: XCAFDoc_ShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape;
                  L: var TDF_Label): Standard_Boolean {.noSideEffect,
    importcpp: "FindSubShape", header: "XCAFDoc_ShapeTool.hxx".}
proc AddSubShape*(this: XCAFDoc_ShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape): TDF_Label {.
    noSideEffect, importcpp: "AddSubShape", header: "XCAFDoc_ShapeTool.hxx".}
proc AddSubShape*(this: XCAFDoc_ShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape;
                 addedSubShapeL: var TDF_Label): Standard_Boolean {.noSideEffect,
    importcpp: "AddSubShape", header: "XCAFDoc_ShapeTool.hxx".}
proc FindMainShapeUsingMap*(this: XCAFDoc_ShapeTool; sub: TopoDS_Shape): TDF_Label {.
    noSideEffect, importcpp: "FindMainShapeUsingMap",
    header: "XCAFDoc_ShapeTool.hxx".}
proc FindMainShape*(this: XCAFDoc_ShapeTool; sub: TopoDS_Shape): TDF_Label {.
    noSideEffect, importcpp: "FindMainShape", header: "XCAFDoc_ShapeTool.hxx".}
proc GetSubShapes*(L: TDF_Label; Labels: var TDF_LabelSequence): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::GetSubShapes(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc BaseLabel*(this: XCAFDoc_ShapeTool): TDF_Label {.noSideEffect,
    importcpp: "BaseLabel", header: "XCAFDoc_ShapeTool.hxx".}
proc Dump*(this: XCAFDoc_ShapeTool; theDumpLog: var Standard_OStream;
          deep: Standard_Boolean): var Standard_OStream {.noSideEffect,
    importcpp: "Dump", header: "XCAFDoc_ShapeTool.hxx".}
proc Dump*(this: XCAFDoc_ShapeTool; theDumpLog: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_ShapeTool.hxx".}
proc DumpShape*(theDumpLog: var Standard_OStream; L: TDF_Label;
               level: Standard_Integer = 0; deep: Standard_Boolean = Standard_False) {.
    importcpp: "XCAFDoc_ShapeTool::DumpShape(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc ID*(this: XCAFDoc_ShapeTool): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_ShapeTool.hxx".}
proc IsExternRef*(L: TDF_Label): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::IsExternRef(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc SetExternRefs*(this: XCAFDoc_ShapeTool; SHAS: TColStd_SequenceOfHAsciiString): TDF_Label {.
    noSideEffect, importcpp: "SetExternRefs", header: "XCAFDoc_ShapeTool.hxx".}
proc SetExternRefs*(this: XCAFDoc_ShapeTool; L: TDF_Label;
                   SHAS: TColStd_SequenceOfHAsciiString) {.noSideEffect,
    importcpp: "SetExternRefs", header: "XCAFDoc_ShapeTool.hxx".}
proc GetExternRefs*(L: TDF_Label; SHAS: var TColStd_SequenceOfHAsciiString) {.
    importcpp: "XCAFDoc_ShapeTool::GetExternRefs(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc SetSHUO*(this: XCAFDoc_ShapeTool; Labels: TDF_LabelSequence;
             MainSHUOAttr: var handle[XCAFDoc_GraphNode]): Standard_Boolean {.
    noSideEffect, importcpp: "SetSHUO", header: "XCAFDoc_ShapeTool.hxx".}
proc GetSHUO*(SHUOLabel: TDF_Label; aSHUOAttr: var handle[XCAFDoc_GraphNode]): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::GetSHUO(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc GetAllComponentSHUO*(CompLabel: TDF_Label;
                         SHUOAttrs: var TDF_AttributeSequence): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::GetAllComponentSHUO(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc GetSHUOUpperUsage*(NextUsageL: TDF_Label; Labels: var TDF_LabelSequence): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::GetSHUOUpperUsage(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc GetSHUONextUsage*(UpperUsageL: TDF_Label; Labels: var TDF_LabelSequence): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::GetSHUONextUsage(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc RemoveSHUO*(this: XCAFDoc_ShapeTool; SHUOLabel: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "RemoveSHUO", header: "XCAFDoc_ShapeTool.hxx".}
proc FindComponent*(this: XCAFDoc_ShapeTool; theShape: TopoDS_Shape;
                   Labels: var TDF_LabelSequence): Standard_Boolean {.noSideEffect,
    importcpp: "FindComponent", header: "XCAFDoc_ShapeTool.hxx".}
proc GetSHUOInstance*(this: XCAFDoc_ShapeTool; theSHUO: handle[XCAFDoc_GraphNode]): TopoDS_Shape {.
    noSideEffect, importcpp: "GetSHUOInstance", header: "XCAFDoc_ShapeTool.hxx".}
proc SetInstanceSHUO*(this: XCAFDoc_ShapeTool; theShape: TopoDS_Shape): handle[
    XCAFDoc_GraphNode] {.noSideEffect, importcpp: "SetInstanceSHUO",
                        header: "XCAFDoc_ShapeTool.hxx".}
proc GetAllSHUOInstances*(this: XCAFDoc_ShapeTool;
                         theSHUO: handle[XCAFDoc_GraphNode];
                         theSHUOShapeSeq: var TopTools_SequenceOfShape): Standard_Boolean {.
    noSideEffect, importcpp: "GetAllSHUOInstances", header: "XCAFDoc_ShapeTool.hxx".}
proc FindSHUO*(Labels: TDF_LabelSequence;
              theSHUOAttr: var handle[XCAFDoc_GraphNode]): Standard_Boolean {.
    importcpp: "XCAFDoc_ShapeTool::FindSHUO(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc Expand*(this: var XCAFDoc_ShapeTool; Shape: TDF_Label): Standard_Boolean {.
    importcpp: "Expand", header: "XCAFDoc_ShapeTool.hxx".}
proc GetNamedProperties*(this: XCAFDoc_ShapeTool; theLabel: TDF_Label;
                        theToCreate: Standard_Boolean = Standard_False): handle[
    TDataStd_NamedData] {.noSideEffect, importcpp: "GetNamedProperties",
                         header: "XCAFDoc_ShapeTool.hxx".}
proc GetNamedProperties*(this: XCAFDoc_ShapeTool; theShape: TopoDS_Shape;
                        theToCreate: Standard_Boolean = Standard_False): handle[
    TDataStd_NamedData] {.noSideEffect, importcpp: "GetNamedProperties",
                         header: "XCAFDoc_ShapeTool.hxx".}
proc DumpJson*(this: XCAFDoc_ShapeTool; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_ShapeTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_ShapeTool , TDataStd_GenericEmpty ) private : ! Checks recursively if the given assembly item is modified. If so, its
## ! associated compound is updated. Returns true if the assembly item is
## ! modified, false -- otherwise. Standard_Boolean updateComponent ( const TDF_Label & theAssmLabel , TopoDS_Shape & theUpdatedShape , TDF_LabelMap & theUpdated ) const ;
## Error: token expected: ) but got: ,!!!

proc addShape*(this: var XCAFDoc_ShapeTool; S: TopoDS_Shape;
              makeAssembly: Standard_Boolean = Standard_True): TDF_Label {.
    importcpp: "addShape", header: "XCAFDoc_ShapeTool.hxx".}
proc MakeReference*(L: TDF_Label; refL: TDF_Label; loc: TopLoc_Location) {.
    importcpp: "XCAFDoc_ShapeTool::MakeReference(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc makeSubShape*(this: var XCAFDoc_ShapeTool; theMainShapeL: TDF_Label;
                  thePart: TDF_Label; theShape: TopoDS_Shape;
                  theLoc: TopLoc_Location) {.importcpp: "makeSubShape",
    header: "XCAFDoc_ShapeTool.hxx".}