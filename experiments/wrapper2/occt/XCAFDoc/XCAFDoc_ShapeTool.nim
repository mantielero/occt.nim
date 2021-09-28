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
  HandleXCAFDocShapeTool* = Handle[XCAFDocShapeTool]

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
  XCAFDocShapeTool* {.importcpp: "XCAFDoc_ShapeTool",
                     header: "XCAFDoc_ShapeTool.hxx", bycopy.} = object of TDataStdGenericEmpty
    myShapeLabels* {.importc: "myShapeLabels".}: XCAFDocDataMapOfShapeLabel
    mySubShapes* {.importc: "mySubShapes".}: XCAFDocDataMapOfShapeLabel
    mySimpleShapes* {.importc: "mySimpleShapes".}: XCAFDocDataMapOfShapeLabel
    hasSimpleShapes* {.importc: "hasSimpleShapes".}: bool


proc getID*(): StandardGUID {.importcpp: "XCAFDoc_ShapeTool::GetID(@)",
                           header: "XCAFDoc_ShapeTool.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocShapeTool] {.
    importcpp: "XCAFDoc_ShapeTool::Set(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc constructXCAFDocShapeTool*(): XCAFDocShapeTool {.constructor,
    importcpp: "XCAFDoc_ShapeTool(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc isTopLevel*(this: XCAFDocShapeTool; L: TDF_Label): bool {.noSideEffect,
    importcpp: "IsTopLevel", header: "XCAFDoc_ShapeTool.hxx".}
proc isFree*(L: TDF_Label): bool {.importcpp: "XCAFDoc_ShapeTool::IsFree(@)",
                               header: "XCAFDoc_ShapeTool.hxx".}
proc isShape*(L: TDF_Label): bool {.importcpp: "XCAFDoc_ShapeTool::IsShape(@)",
                                header: "XCAFDoc_ShapeTool.hxx".}
proc isSimpleShape*(L: TDF_Label): bool {.importcpp: "XCAFDoc_ShapeTool::IsSimpleShape(@)",
                                      header: "XCAFDoc_ShapeTool.hxx".}
proc isReference*(L: TDF_Label): bool {.importcpp: "XCAFDoc_ShapeTool::IsReference(@)",
                                    header: "XCAFDoc_ShapeTool.hxx".}
proc isAssembly*(L: TDF_Label): bool {.importcpp: "XCAFDoc_ShapeTool::IsAssembly(@)",
                                   header: "XCAFDoc_ShapeTool.hxx".}
proc isComponent*(L: TDF_Label): bool {.importcpp: "XCAFDoc_ShapeTool::IsComponent(@)",
                                    header: "XCAFDoc_ShapeTool.hxx".}
proc isCompound*(L: TDF_Label): bool {.importcpp: "XCAFDoc_ShapeTool::IsCompound(@)",
                                   header: "XCAFDoc_ShapeTool.hxx".}
proc isSubShape*(L: TDF_Label): bool {.importcpp: "XCAFDoc_ShapeTool::IsSubShape(@)",
                                   header: "XCAFDoc_ShapeTool.hxx".}
proc isSubShape*(this: XCAFDocShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape): bool {.
    noSideEffect, importcpp: "IsSubShape", header: "XCAFDoc_ShapeTool.hxx".}
proc searchUsingMap*(this: XCAFDocShapeTool; s: TopoDS_Shape; L: var TDF_Label;
                    findWithoutLoc: bool; findSubshape: bool): bool {.noSideEffect,
    importcpp: "SearchUsingMap", header: "XCAFDoc_ShapeTool.hxx".}
proc search*(this: XCAFDocShapeTool; s: TopoDS_Shape; L: var TDF_Label;
            findInstance: bool = true; findComponent: bool = true;
            findSubshape: bool = true): bool {.noSideEffect, importcpp: "Search",
    header: "XCAFDoc_ShapeTool.hxx".}
proc findShape*(this: XCAFDocShapeTool; s: TopoDS_Shape; L: var TDF_Label;
               findInstance: bool = false): bool {.noSideEffect,
    importcpp: "FindShape", header: "XCAFDoc_ShapeTool.hxx".}
proc findShape*(this: XCAFDocShapeTool; s: TopoDS_Shape; findInstance: bool = false): TDF_Label {.
    noSideEffect, importcpp: "FindShape", header: "XCAFDoc_ShapeTool.hxx".}
proc getShape*(L: TDF_Label; s: var TopoDS_Shape): bool {.
    importcpp: "XCAFDoc_ShapeTool::GetShape(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc getShape*(L: TDF_Label): TopoDS_Shape {.
    importcpp: "XCAFDoc_ShapeTool::GetShape(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc newShape*(this: XCAFDocShapeTool): TDF_Label {.noSideEffect,
    importcpp: "NewShape", header: "XCAFDoc_ShapeTool.hxx".}
proc setShape*(this: var XCAFDocShapeTool; L: TDF_Label; s: TopoDS_Shape) {.
    importcpp: "SetShape", header: "XCAFDoc_ShapeTool.hxx".}
proc addShape*(this: var XCAFDocShapeTool; s: TopoDS_Shape; makeAssembly: bool = true;
              makePrepare: bool = true): TDF_Label {.importcpp: "AddShape",
    header: "XCAFDoc_ShapeTool.hxx".}
proc removeShape*(this: XCAFDocShapeTool; L: TDF_Label; removeCompletely: bool = true): bool {.
    noSideEffect, importcpp: "RemoveShape", header: "XCAFDoc_ShapeTool.hxx".}
proc init*(this: var XCAFDocShapeTool) {.importcpp: "Init",
                                     header: "XCAFDoc_ShapeTool.hxx".}
proc setAutoNaming*(v: bool) {.importcpp: "XCAFDoc_ShapeTool::SetAutoNaming(@)",
                            header: "XCAFDoc_ShapeTool.hxx".}
proc autoNaming*(): bool {.importcpp: "XCAFDoc_ShapeTool::AutoNaming(@)",
                        header: "XCAFDoc_ShapeTool.hxx".}
proc computeShapes*(this: var XCAFDocShapeTool; L: TDF_Label) {.
    importcpp: "ComputeShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc computeSimpleShapes*(this: var XCAFDocShapeTool) {.
    importcpp: "ComputeSimpleShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc getShapes*(this: XCAFDocShapeTool; labels: var TDF_LabelSequence) {.noSideEffect,
    importcpp: "GetShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc getFreeShapes*(this: XCAFDocShapeTool; freeLabels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetFreeShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc getUsers*(L: TDF_Label; labels: var TDF_LabelSequence; getsubchilds: bool = false): int {.
    importcpp: "XCAFDoc_ShapeTool::GetUsers(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc getLocation*(L: TDF_Label): TopLocLocation {.
    importcpp: "XCAFDoc_ShapeTool::GetLocation(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc getReferredShape*(L: TDF_Label; label: var TDF_Label): bool {.
    importcpp: "XCAFDoc_ShapeTool::GetReferredShape(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc nbComponents*(L: TDF_Label; getsubchilds: bool = false): int {.
    importcpp: "XCAFDoc_ShapeTool::NbComponents(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc getComponents*(L: TDF_Label; labels: var TDF_LabelSequence;
                   getsubchilds: bool = false): bool {.
    importcpp: "XCAFDoc_ShapeTool::GetComponents(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc addComponent*(this: var XCAFDocShapeTool; assembly: TDF_Label; comp: TDF_Label;
                  loc: TopLocLocation): TDF_Label {.importcpp: "AddComponent",
    header: "XCAFDoc_ShapeTool.hxx".}
proc addComponent*(this: var XCAFDocShapeTool; assembly: TDF_Label;
                  comp: TopoDS_Shape; expand: bool = false): TDF_Label {.
    importcpp: "AddComponent", header: "XCAFDoc_ShapeTool.hxx".}
proc removeComponent*(this: XCAFDocShapeTool; comp: TDF_Label) {.noSideEffect,
    importcpp: "RemoveComponent", header: "XCAFDoc_ShapeTool.hxx".}
proc updateAssemblies*(this: var XCAFDocShapeTool) {.importcpp: "UpdateAssemblies",
    header: "XCAFDoc_ShapeTool.hxx".}
proc findSubShape*(this: XCAFDocShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape;
                  L: var TDF_Label): bool {.noSideEffect, importcpp: "FindSubShape",
                                        header: "XCAFDoc_ShapeTool.hxx".}
proc addSubShape*(this: XCAFDocShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape): TDF_Label {.
    noSideEffect, importcpp: "AddSubShape", header: "XCAFDoc_ShapeTool.hxx".}
proc addSubShape*(this: XCAFDocShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape;
                 addedSubShapeL: var TDF_Label): bool {.noSideEffect,
    importcpp: "AddSubShape", header: "XCAFDoc_ShapeTool.hxx".}
proc findMainShapeUsingMap*(this: XCAFDocShapeTool; sub: TopoDS_Shape): TDF_Label {.
    noSideEffect, importcpp: "FindMainShapeUsingMap",
    header: "XCAFDoc_ShapeTool.hxx".}
proc findMainShape*(this: XCAFDocShapeTool; sub: TopoDS_Shape): TDF_Label {.
    noSideEffect, importcpp: "FindMainShape", header: "XCAFDoc_ShapeTool.hxx".}
proc getSubShapes*(L: TDF_Label; labels: var TDF_LabelSequence): bool {.
    importcpp: "XCAFDoc_ShapeTool::GetSubShapes(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc baseLabel*(this: XCAFDocShapeTool): TDF_Label {.noSideEffect,
    importcpp: "BaseLabel", header: "XCAFDoc_ShapeTool.hxx".}
proc dump*(this: XCAFDocShapeTool; theDumpLog: var StandardOStream; deep: bool): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_ShapeTool.hxx".}
proc dump*(this: XCAFDocShapeTool; theDumpLog: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_ShapeTool.hxx".}
proc dumpShape*(theDumpLog: var StandardOStream; L: TDF_Label; level: int = 0;
               deep: bool = false) {.importcpp: "XCAFDoc_ShapeTool::DumpShape(@)",
                                 header: "XCAFDoc_ShapeTool.hxx".}
proc id*(this: XCAFDocShapeTool): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_ShapeTool.hxx".}
proc isExternRef*(L: TDF_Label): bool {.importcpp: "XCAFDoc_ShapeTool::IsExternRef(@)",
                                    header: "XCAFDoc_ShapeTool.hxx".}
proc setExternRefs*(this: XCAFDocShapeTool; shas: TColStdSequenceOfHAsciiString): TDF_Label {.
    noSideEffect, importcpp: "SetExternRefs", header: "XCAFDoc_ShapeTool.hxx".}
proc setExternRefs*(this: XCAFDocShapeTool; L: TDF_Label;
                   shas: TColStdSequenceOfHAsciiString) {.noSideEffect,
    importcpp: "SetExternRefs", header: "XCAFDoc_ShapeTool.hxx".}
proc getExternRefs*(L: TDF_Label; shas: var TColStdSequenceOfHAsciiString) {.
    importcpp: "XCAFDoc_ShapeTool::GetExternRefs(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc setSHUO*(this: XCAFDocShapeTool; labels: TDF_LabelSequence;
             mainSHUOAttr: var Handle[XCAFDocGraphNode]): bool {.noSideEffect,
    importcpp: "SetSHUO", header: "XCAFDoc_ShapeTool.hxx".}
proc getSHUO*(sHUOLabel: TDF_Label; aSHUOAttr: var Handle[XCAFDocGraphNode]): bool {.
    importcpp: "XCAFDoc_ShapeTool::GetSHUO(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc getAllComponentSHUO*(compLabel: TDF_Label;
                         sHUOAttrs: var TDF_AttributeSequence): bool {.
    importcpp: "XCAFDoc_ShapeTool::GetAllComponentSHUO(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc getSHUOUpperUsage*(nextUsageL: TDF_Label; labels: var TDF_LabelSequence): bool {.
    importcpp: "XCAFDoc_ShapeTool::GetSHUOUpperUsage(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc getSHUONextUsage*(upperUsageL: TDF_Label; labels: var TDF_LabelSequence): bool {.
    importcpp: "XCAFDoc_ShapeTool::GetSHUONextUsage(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc removeSHUO*(this: XCAFDocShapeTool; sHUOLabel: TDF_Label): bool {.noSideEffect,
    importcpp: "RemoveSHUO", header: "XCAFDoc_ShapeTool.hxx".}
proc findComponent*(this: XCAFDocShapeTool; theShape: TopoDS_Shape;
                   labels: var TDF_LabelSequence): bool {.noSideEffect,
    importcpp: "FindComponent", header: "XCAFDoc_ShapeTool.hxx".}
proc getSHUOInstance*(this: XCAFDocShapeTool; theSHUO: Handle[XCAFDocGraphNode]): TopoDS_Shape {.
    noSideEffect, importcpp: "GetSHUOInstance", header: "XCAFDoc_ShapeTool.hxx".}
proc setInstanceSHUO*(this: XCAFDocShapeTool; theShape: TopoDS_Shape): Handle[
    XCAFDocGraphNode] {.noSideEffect, importcpp: "SetInstanceSHUO",
                       header: "XCAFDoc_ShapeTool.hxx".}
proc getAllSHUOInstances*(this: XCAFDocShapeTool;
                         theSHUO: Handle[XCAFDocGraphNode];
                         theSHUOShapeSeq: var TopToolsSequenceOfShape): bool {.
    noSideEffect, importcpp: "GetAllSHUOInstances", header: "XCAFDoc_ShapeTool.hxx".}
proc findSHUO*(labels: TDF_LabelSequence; theSHUOAttr: var Handle[XCAFDocGraphNode]): bool {.
    importcpp: "XCAFDoc_ShapeTool::FindSHUO(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc expand*(this: var XCAFDocShapeTool; shape: TDF_Label): bool {.importcpp: "Expand",
    header: "XCAFDoc_ShapeTool.hxx".}
proc getNamedProperties*(this: XCAFDocShapeTool; theLabel: TDF_Label;
                        theToCreate: bool = false): Handle[TDataStdNamedData] {.
    noSideEffect, importcpp: "GetNamedProperties", header: "XCAFDoc_ShapeTool.hxx".}
proc getNamedProperties*(this: XCAFDocShapeTool; theShape: TopoDS_Shape;
                        theToCreate: bool = false): Handle[TDataStdNamedData] {.
    noSideEffect, importcpp: "GetNamedProperties", header: "XCAFDoc_ShapeTool.hxx".}
proc dumpJson*(this: XCAFDocShapeTool; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFDoc_ShapeTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_ShapeTool , TDataStd_GenericEmpty ) private : ! Checks recursively if the given assembly item is modified. If so, its
## ! associated compound is updated. Returns true if the assembly item is
## ! modified, false -- otherwise. Standard_Boolean updateComponent ( const TDF_Label & theAssmLabel , TopoDS_Shape & theUpdatedShape , TDF_LabelMap & theUpdated ) const ;
## Error: token expected: ) but got: ,!!!

proc addShape*(this: var XCAFDocShapeTool; s: TopoDS_Shape; makeAssembly: bool = true): TDF_Label {.
    importcpp: "addShape", header: "XCAFDoc_ShapeTool.hxx".}
proc makeReference*(L: TDF_Label; refL: TDF_Label; loc: TopLocLocation) {.
    importcpp: "XCAFDoc_ShapeTool::MakeReference(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc makeSubShape*(this: var XCAFDocShapeTool; theMainShapeL: TDF_Label;
                  thePart: TDF_Label; theShape: TopoDS_Shape; theLoc: TopLocLocation) {.
    importcpp: "makeSubShape", header: "XCAFDoc_ShapeTool.hxx".}














































