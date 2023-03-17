import xcafdoc_types

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

proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_ShapeTool::GetID(@)",
                            header: "XCAFDoc_ShapeTool.hxx".}
proc Set*(L: TDF_Label): handle[XCAFDoc_ShapeTool] {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::Set(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc newXCAFDoc_ShapeTool*(): XCAFDoc_ShapeTool {.cdecl, constructor,
    importcpp: "XCAFDoc_ShapeTool(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc IsTopLevel*(this: XCAFDoc_ShapeTool; L: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsTopLevel", header: "XCAFDoc_ShapeTool.hxx".}
proc IsFree*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsFree(@)",
                               header: "XCAFDoc_ShapeTool.hxx".}
proc IsShape*(L: TDF_Label): bool {.cdecl,
                                importcpp: "XCAFDoc_ShapeTool::IsShape(@)",
                                header: "XCAFDoc_ShapeTool.hxx".}
proc IsSimpleShape*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsSimpleShape(@)",
                                      header: "XCAFDoc_ShapeTool.hxx".}
proc IsReference*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsReference(@)",
                                    header: "XCAFDoc_ShapeTool.hxx".}
proc IsAssembly*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsAssembly(@)",
                                   header: "XCAFDoc_ShapeTool.hxx".}
proc IsComponent*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsComponent(@)",
                                    header: "XCAFDoc_ShapeTool.hxx".}
proc IsCompound*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsCompound(@)",
                                   header: "XCAFDoc_ShapeTool.hxx".}
proc IsSubShape*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsSubShape(@)",
                                   header: "XCAFDoc_ShapeTool.hxx".}
proc IsSubShape*(this: XCAFDoc_ShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsSubShape", header: "XCAFDoc_ShapeTool.hxx".}
proc SearchUsingMap*(this: XCAFDoc_ShapeTool; S: TopoDS_Shape; L: var TDF_Label;
                    findWithoutLoc: bool; findSubshape: bool): bool {.noSideEffect,
    cdecl, importcpp: "SearchUsingMap", header: "XCAFDoc_ShapeTool.hxx".}
proc Search*(this: XCAFDoc_ShapeTool; S: TopoDS_Shape; L: var TDF_Label;
            findInstance: bool = true; findComponent: bool = true;
            findSubshape: bool = true): bool {.noSideEffect, cdecl,
    importcpp: "Search", header: "XCAFDoc_ShapeTool.hxx".}
proc FindShape*(this: XCAFDoc_ShapeTool; S: TopoDS_Shape; L: var TDF_Label;
               findInstance: bool = false): bool {.noSideEffect, cdecl,
    importcpp: "FindShape", header: "XCAFDoc_ShapeTool.hxx".}
proc FindShape*(this: XCAFDoc_ShapeTool; S: TopoDS_Shape; findInstance: bool = false): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindShape", header: "XCAFDoc_ShapeTool.hxx".}
proc GetShape*(L: TDF_Label; S: var TopoDS_Shape): bool {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetShape(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc GetShape*(L: TDF_Label): TopoDS_Shape {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetShape(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc NewShape*(this: XCAFDoc_ShapeTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "NewShape", header: "XCAFDoc_ShapeTool.hxx".}
proc SetShape*(this: var XCAFDoc_ShapeTool; L: TDF_Label; S: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape", header: "XCAFDoc_ShapeTool.hxx".}
proc AddShape*(this: var XCAFDoc_ShapeTool; S: TopoDS_Shape;
              makeAssembly: bool = true; makePrepare: bool = true): TDF_Label {.cdecl,
    importcpp: "AddShape", header: "XCAFDoc_ShapeTool.hxx".}
proc RemoveShape*(this: XCAFDoc_ShapeTool; L: TDF_Label;
                 removeCompletely: bool = true): bool {.noSideEffect, cdecl,
    importcpp: "RemoveShape", header: "XCAFDoc_ShapeTool.hxx".}
proc Init*(this: var XCAFDoc_ShapeTool) {.cdecl, importcpp: "Init",
                                      header: "XCAFDoc_ShapeTool.hxx".}
proc SetAutoNaming*(V: bool) {.cdecl,
                            importcpp: "XCAFDoc_ShapeTool::SetAutoNaming(@)",
                            header: "XCAFDoc_ShapeTool.hxx".}
proc AutoNaming*(): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::AutoNaming(@)",
                        header: "XCAFDoc_ShapeTool.hxx".}
proc ComputeShapes*(this: var XCAFDoc_ShapeTool; L: TDF_Label) {.cdecl,
    importcpp: "ComputeShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc ComputeSimpleShapes*(this: var XCAFDoc_ShapeTool) {.cdecl,
    importcpp: "ComputeSimpleShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc GetShapes*(this: XCAFDoc_ShapeTool; Labels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc GetFreeShapes*(this: XCAFDoc_ShapeTool; FreeLabels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetFreeShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc GetUsers*(L: TDF_Label; Labels: var TDF_LabelSequence; getsubchilds: bool = false): cint {.
    cdecl, importcpp: "XCAFDoc_ShapeTool::GetUsers(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc GetLocation*(L: TDF_Label): TopLoc_Location {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetLocation(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc GetReferredShape*(L: TDF_Label; Label: var TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetReferredShape(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc NbComponents*(L: TDF_Label; getsubchilds: bool = false): cint {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::NbComponents(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc GetComponents*(L: TDF_Label; Labels: var TDF_LabelSequence;
                   getsubchilds: bool = false): bool {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetComponents(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc AddComponent*(this: var XCAFDoc_ShapeTool; assembly: TDF_Label; comp: TDF_Label;
                  Loc: TopLoc_Location): TDF_Label {.cdecl,
    importcpp: "AddComponent", header: "XCAFDoc_ShapeTool.hxx".}
proc AddComponent*(this: var XCAFDoc_ShapeTool; assembly: TDF_Label;
                  comp: TopoDS_Shape; expand: bool = false): TDF_Label {.cdecl,
    importcpp: "AddComponent", header: "XCAFDoc_ShapeTool.hxx".}
proc RemoveComponent*(this: XCAFDoc_ShapeTool; comp: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "RemoveComponent", header: "XCAFDoc_ShapeTool.hxx".}
proc UpdateAssemblies*(this: var XCAFDoc_ShapeTool) {.cdecl,
    importcpp: "UpdateAssemblies", header: "XCAFDoc_ShapeTool.hxx".}
proc FindSubShape*(this: XCAFDoc_ShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape;
                  L: var TDF_Label): bool {.noSideEffect, cdecl,
                                        importcpp: "FindSubShape",
                                        header: "XCAFDoc_ShapeTool.hxx".}
proc AddSubShape*(this: XCAFDoc_ShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddSubShape", header: "XCAFDoc_ShapeTool.hxx".}
proc AddSubShape*(this: XCAFDoc_ShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape;
                 addedSubShapeL: var TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "AddSubShape", header: "XCAFDoc_ShapeTool.hxx".}
proc FindMainShapeUsingMap*(this: XCAFDoc_ShapeTool; sub: TopoDS_Shape): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindMainShapeUsingMap",
    header: "XCAFDoc_ShapeTool.hxx".}
proc FindMainShape*(this: XCAFDoc_ShapeTool; sub: TopoDS_Shape): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindMainShape", header: "XCAFDoc_ShapeTool.hxx".}
proc GetSubShapes*(L: TDF_Label; Labels: var TDF_LabelSequence): bool {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetSubShapes(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc BaseLabel*(this: XCAFDoc_ShapeTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "BaseLabel", header: "XCAFDoc_ShapeTool.hxx".}
proc Dump*(this: XCAFDoc_ShapeTool; theDumpLog: var Standard_OStream; deep: bool): var Standard_OStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_ShapeTool.hxx".}
proc Dump*(this: XCAFDoc_ShapeTool; theDumpLog: var Standard_OStream): var Standard_OStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_ShapeTool.hxx".}
proc DumpShape*(theDumpLog: var Standard_OStream; L: TDF_Label; level: cint = 0;
               deep: bool = false) {.cdecl,
                                 importcpp: "XCAFDoc_ShapeTool::DumpShape(@)",
                                 header: "XCAFDoc_ShapeTool.hxx".}
proc ID*(this: XCAFDoc_ShapeTool): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_ShapeTool.hxx".}
proc IsExternRef*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsExternRef(@)",
                                    header: "XCAFDoc_ShapeTool.hxx".}
proc SetExternRefs*(this: XCAFDoc_ShapeTool; SHAS: TColStd_SequenceOfHAsciiString): TDF_Label {.
    noSideEffect, cdecl, importcpp: "SetExternRefs", header: "XCAFDoc_ShapeTool.hxx".}
proc SetExternRefs*(this: XCAFDoc_ShapeTool; L: TDF_Label;
                   SHAS: TColStd_SequenceOfHAsciiString) {.noSideEffect, cdecl,
    importcpp: "SetExternRefs", header: "XCAFDoc_ShapeTool.hxx".}
proc GetExternRefs*(L: TDF_Label; SHAS: var TColStd_SequenceOfHAsciiString) {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetExternRefs(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc SetSHUO*(this: XCAFDoc_ShapeTool; Labels: TDF_LabelSequence;
             MainSHUOAttr: var handle[XCAFDoc_GraphNode]): bool {.noSideEffect,
    cdecl, importcpp: "SetSHUO", header: "XCAFDoc_ShapeTool.hxx".}
proc GetSHUO*(SHUOLabel: TDF_Label; aSHUOAttr: var handle[XCAFDoc_GraphNode]): bool {.
    cdecl, importcpp: "XCAFDoc_ShapeTool::GetSHUO(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc GetAllComponentSHUO*(CompLabel: TDF_Label;
                         SHUOAttrs: var TDF_AttributeSequence): bool {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetAllComponentSHUO(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc GetSHUOUpperUsage*(NextUsageL: TDF_Label; Labels: var TDF_LabelSequence): bool {.
    cdecl, importcpp: "XCAFDoc_ShapeTool::GetSHUOUpperUsage(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc GetSHUONextUsage*(UpperUsageL: TDF_Label; Labels: var TDF_LabelSequence): bool {.
    cdecl, importcpp: "XCAFDoc_ShapeTool::GetSHUONextUsage(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc RemoveSHUO*(this: XCAFDoc_ShapeTool; SHUOLabel: TDF_Label): bool {.noSideEffect,
    cdecl, importcpp: "RemoveSHUO", header: "XCAFDoc_ShapeTool.hxx".}
proc FindComponent*(this: XCAFDoc_ShapeTool; theShape: TopoDS_Shape;
                   Labels: var TDF_LabelSequence): bool {.noSideEffect, cdecl,
    importcpp: "FindComponent", header: "XCAFDoc_ShapeTool.hxx".}
proc GetSHUOInstance*(this: XCAFDoc_ShapeTool; theSHUO: handle[XCAFDoc_GraphNode]): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "GetSHUOInstance",
    header: "XCAFDoc_ShapeTool.hxx".}
proc SetInstanceSHUO*(this: XCAFDoc_ShapeTool; theShape: TopoDS_Shape): handle[
    XCAFDoc_GraphNode] {.noSideEffect, cdecl, importcpp: "SetInstanceSHUO",
                        header: "XCAFDoc_ShapeTool.hxx".}
proc GetAllSHUOInstances*(this: XCAFDoc_ShapeTool;
                         theSHUO: handle[XCAFDoc_GraphNode];
                         theSHUOShapeSeq: var TopTools_SequenceOfShape): bool {.
    noSideEffect, cdecl, importcpp: "GetAllSHUOInstances",
    header: "XCAFDoc_ShapeTool.hxx".}
proc FindSHUO*(Labels: TDF_LabelSequence;
              theSHUOAttr: var handle[XCAFDoc_GraphNode]): bool {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::FindSHUO(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc Expand*(this: var XCAFDoc_ShapeTool; Shape: TDF_Label): bool {.cdecl,
    importcpp: "Expand", header: "XCAFDoc_ShapeTool.hxx".}
proc GetNamedProperties*(this: XCAFDoc_ShapeTool; theLabel: TDF_Label;
                        theToCreate: bool = false): handle[TDataStd_NamedData] {.
    noSideEffect, cdecl, importcpp: "GetNamedProperties",
    header: "XCAFDoc_ShapeTool.hxx".}
proc GetNamedProperties*(this: XCAFDoc_ShapeTool; theShape: TopoDS_Shape;
                        theToCreate: bool = false): handle[TDataStd_NamedData] {.
    noSideEffect, cdecl, importcpp: "GetNamedProperties",
    header: "XCAFDoc_ShapeTool.hxx".}
proc DumpJson*(this: XCAFDoc_ShapeTool; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_ShapeTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_ShapeTool , TDataStd_GenericEmpty ) private : ! Checks recursively if the given assembly item is modified. If so, its
## ! associated compound is updated. Returns true if the assembly item is
## ! modified, false -- otherwise. bool updateComponent ( const TDF_Label & theAssmLabel , TopoDS_Shape & theUpdatedShape , TDF_LabelMap & theUpdated ) const ;
## Error: token expected: ) but got: ,!!!

proc addShape*(this: var XCAFDoc_ShapeTool; S: TopoDS_Shape; makeAssembly: bool = true): TDF_Label {.
    cdecl, importcpp: "addShape", header: "XCAFDoc_ShapeTool.hxx".}
proc MakeReference*(L: TDF_Label; refL: TDF_Label; loc: TopLoc_Location) {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::MakeReference(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc makeSubShape*(this: var XCAFDoc_ShapeTool; theMainShapeL: TDF_Label;
                  thePart: TDF_Label; theShape: TopoDS_Shape;
                  theLoc: TopLoc_Location) {.cdecl, importcpp: "makeSubShape",
    header: "XCAFDoc_ShapeTool.hxx".}