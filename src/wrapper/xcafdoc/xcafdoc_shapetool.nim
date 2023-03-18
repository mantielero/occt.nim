import ../toploc/toploc_types
import ../tdf/tdf_types
import ../tcolstd/tcolstd_types
import ../topods/topods_types
import ../toptools/toptools_types
import xcafdoc_types
import ../standard/standard_types
import ../tdatastd/tdatastd_types



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





proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_ShapeTool::GetID(@)",
                           header: "XCAFDoc_ShapeTool.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocShapeTool] {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::Set(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc newXCAFDocShapeTool*(): XCAFDocShapeTool {.cdecl, constructor,
    importcpp: "XCAFDoc_ShapeTool(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc isTopLevel*(this: XCAFDocShapeTool; L: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsTopLevel", header: "XCAFDoc_ShapeTool.hxx".}
proc isFree*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsFree(@)",
                               header: "XCAFDoc_ShapeTool.hxx".}
proc isShape*(L: TDF_Label): bool {.cdecl,
                                importcpp: "XCAFDoc_ShapeTool::IsShape(@)",
                                header: "XCAFDoc_ShapeTool.hxx".}
proc isSimpleShape*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsSimpleShape(@)",
                                      header: "XCAFDoc_ShapeTool.hxx".}
proc isReference*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsReference(@)",
                                    header: "XCAFDoc_ShapeTool.hxx".}
proc isAssembly*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsAssembly(@)",
                                   header: "XCAFDoc_ShapeTool.hxx".}
proc isComponent*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsComponent(@)",
                                    header: "XCAFDoc_ShapeTool.hxx".}
proc isCompound*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsCompound(@)",
                                   header: "XCAFDoc_ShapeTool.hxx".}
proc isSubShape*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsSubShape(@)",
                                   header: "XCAFDoc_ShapeTool.hxx".}
proc isSubShape*(this: XCAFDocShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsSubShape", header: "XCAFDoc_ShapeTool.hxx".}
proc searchUsingMap*(this: XCAFDocShapeTool; s: TopoDS_Shape; L: var TDF_Label;
                    findWithoutLoc: bool; findSubshape: bool): bool {.noSideEffect,
    cdecl, importcpp: "SearchUsingMap", header: "XCAFDoc_ShapeTool.hxx".}
proc search*(this: XCAFDocShapeTool; s: TopoDS_Shape; L: var TDF_Label;
            findInstance: bool = true; findComponent: bool = true;
            findSubshape: bool = true): bool {.noSideEffect, cdecl,
    importcpp: "Search", header: "XCAFDoc_ShapeTool.hxx".}
proc findShape*(this: XCAFDocShapeTool; s: TopoDS_Shape; L: var TDF_Label;
               findInstance: bool = false): bool {.noSideEffect, cdecl,
    importcpp: "FindShape", header: "XCAFDoc_ShapeTool.hxx".}
proc findShape*(this: XCAFDocShapeTool; s: TopoDS_Shape; findInstance: bool = false): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindShape", header: "XCAFDoc_ShapeTool.hxx".}
proc getShape*(L: TDF_Label; s: var TopoDS_Shape): bool {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetShape(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc getShape*(L: TDF_Label): TopoDS_Shape {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetShape(@)", header: "XCAFDoc_ShapeTool.hxx".}
proc newShape*(this: XCAFDocShapeTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "NewShape", header: "XCAFDoc_ShapeTool.hxx".}
proc setShape*(this: var XCAFDocShapeTool; L: TDF_Label; s: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape", header: "XCAFDoc_ShapeTool.hxx".}
proc addShape*(this: var XCAFDocShapeTool; s: TopoDS_Shape; makeAssembly: bool = true;
              makePrepare: bool = true): TDF_Label {.cdecl, importcpp: "AddShape",
    header: "XCAFDoc_ShapeTool.hxx".}
proc removeShape*(this: XCAFDocShapeTool; L: TDF_Label; removeCompletely: bool = true): bool {.
    noSideEffect, cdecl, importcpp: "RemoveShape", header: "XCAFDoc_ShapeTool.hxx".}
proc init*(this: var XCAFDocShapeTool) {.cdecl, importcpp: "Init",
                                     header: "XCAFDoc_ShapeTool.hxx".}
proc setAutoNaming*(v: bool) {.cdecl,
                            importcpp: "XCAFDoc_ShapeTool::SetAutoNaming(@)",
                            header: "XCAFDoc_ShapeTool.hxx".}
proc autoNaming*(): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::AutoNaming(@)",
                        header: "XCAFDoc_ShapeTool.hxx".}
proc computeShapes*(this: var XCAFDocShapeTool; L: TDF_Label) {.cdecl,
    importcpp: "ComputeShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc computeSimpleShapes*(this: var XCAFDocShapeTool) {.cdecl,
    importcpp: "ComputeSimpleShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc getShapes*(this: XCAFDocShapeTool; labels: var TDF_LabelSequence) {.noSideEffect,
    cdecl, importcpp: "GetShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc getFreeShapes*(this: XCAFDocShapeTool; freeLabels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetFreeShapes", header: "XCAFDoc_ShapeTool.hxx".}
proc getUsers*(L: TDF_Label; labels: var TDF_LabelSequence; getsubchilds: bool = false): cint {.
    cdecl, importcpp: "XCAFDoc_ShapeTool::GetUsers(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc getLocation*(L: TDF_Label): TopLocLocation {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetLocation(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc getReferredShape*(L: TDF_Label; label: var TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetReferredShape(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc nbComponents*(L: TDF_Label; getsubchilds: bool = false): cint {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::NbComponents(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc getComponents*(L: TDF_Label; labels: var TDF_LabelSequence;
                   getsubchilds: bool = false): bool {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetComponents(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc addComponent*(this: var XCAFDocShapeTool; assembly: TDF_Label; comp: TDF_Label;
                  loc: TopLocLocation): TDF_Label {.cdecl,
    importcpp: "AddComponent", header: "XCAFDoc_ShapeTool.hxx".}
proc addComponent*(this: var XCAFDocShapeTool; assembly: TDF_Label;
                  comp: TopoDS_Shape; expand: bool = false): TDF_Label {.cdecl,
    importcpp: "AddComponent", header: "XCAFDoc_ShapeTool.hxx".}
proc removeComponent*(this: XCAFDocShapeTool; comp: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "RemoveComponent", header: "XCAFDoc_ShapeTool.hxx".}
proc updateAssemblies*(this: var XCAFDocShapeTool) {.cdecl,
    importcpp: "UpdateAssemblies", header: "XCAFDoc_ShapeTool.hxx".}
proc findSubShape*(this: XCAFDocShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape;
                  L: var TDF_Label): bool {.noSideEffect, cdecl,
                                        importcpp: "FindSubShape",
                                        header: "XCAFDoc_ShapeTool.hxx".}
proc addSubShape*(this: XCAFDocShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddSubShape", header: "XCAFDoc_ShapeTool.hxx".}
proc addSubShape*(this: XCAFDocShapeTool; shapeL: TDF_Label; sub: TopoDS_Shape;
                 addedSubShapeL: var TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "AddSubShape", header: "XCAFDoc_ShapeTool.hxx".}
proc findMainShapeUsingMap*(this: XCAFDocShapeTool; sub: TopoDS_Shape): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindMainShapeUsingMap",
    header: "XCAFDoc_ShapeTool.hxx".}
proc findMainShape*(this: XCAFDocShapeTool; sub: TopoDS_Shape): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindMainShape", header: "XCAFDoc_ShapeTool.hxx".}
proc getSubShapes*(L: TDF_Label; labels: var TDF_LabelSequence): bool {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetSubShapes(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc baseLabel*(this: XCAFDocShapeTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "BaseLabel", header: "XCAFDoc_ShapeTool.hxx".}
proc dump*(this: XCAFDocShapeTool; theDumpLog: var StandardOStream; deep: bool): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_ShapeTool.hxx".}
proc dump*(this: XCAFDocShapeTool; theDumpLog: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_ShapeTool.hxx".}
proc dumpShape*(theDumpLog: var StandardOStream; L: TDF_Label; level: cint = 0;
               deep: bool = false) {.cdecl,
                                 importcpp: "XCAFDoc_ShapeTool::DumpShape(@)",
                                 header: "XCAFDoc_ShapeTool.hxx".}
proc id*(this: XCAFDocShapeTool): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_ShapeTool.hxx".}
proc isExternRef*(L: TDF_Label): bool {.cdecl, importcpp: "XCAFDoc_ShapeTool::IsExternRef(@)",
                                    header: "XCAFDoc_ShapeTool.hxx".}
proc setExternRefs*(this: XCAFDocShapeTool; shas: TColStdSequenceOfHAsciiString): TDF_Label {.
    noSideEffect, cdecl, importcpp: "SetExternRefs", header: "XCAFDoc_ShapeTool.hxx".}
proc setExternRefs*(this: XCAFDocShapeTool; L: TDF_Label;
                   shas: TColStdSequenceOfHAsciiString) {.noSideEffect, cdecl,
    importcpp: "SetExternRefs", header: "XCAFDoc_ShapeTool.hxx".}
proc getExternRefs*(L: TDF_Label; shas: var TColStdSequenceOfHAsciiString) {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetExternRefs(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc setSHUO*(this: XCAFDocShapeTool; labels: TDF_LabelSequence;
             mainSHUOAttr: var Handle[XCAFDocGraphNode]): bool {.noSideEffect, cdecl,
    importcpp: "SetSHUO", header: "XCAFDoc_ShapeTool.hxx".}
proc getSHUO*(sHUOLabel: TDF_Label; aSHUOAttr: var Handle[XCAFDocGraphNode]): bool {.
    cdecl, importcpp: "XCAFDoc_ShapeTool::GetSHUO(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc getAllComponentSHUO*(compLabel: TDF_Label;
                         sHUOAttrs: var TDF_AttributeSequence): bool {.cdecl,
    importcpp: "XCAFDoc_ShapeTool::GetAllComponentSHUO(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc getSHUOUpperUsage*(nextUsageL: TDF_Label; labels: var TDF_LabelSequence): bool {.
    cdecl, importcpp: "XCAFDoc_ShapeTool::GetSHUOUpperUsage(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc getSHUONextUsage*(upperUsageL: TDF_Label; labels: var TDF_LabelSequence): bool {.
    cdecl, importcpp: "XCAFDoc_ShapeTool::GetSHUONextUsage(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc removeSHUO*(this: XCAFDocShapeTool; sHUOLabel: TDF_Label): bool {.noSideEffect,
    cdecl, importcpp: "RemoveSHUO", header: "XCAFDoc_ShapeTool.hxx".}
proc findComponent*(this: XCAFDocShapeTool; theShape: TopoDS_Shape;
                   labels: var TDF_LabelSequence): bool {.noSideEffect, cdecl,
    importcpp: "FindComponent", header: "XCAFDoc_ShapeTool.hxx".}
proc getSHUOInstance*(this: XCAFDocShapeTool; theSHUO: Handle[XCAFDocGraphNode]): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "GetSHUOInstance",
    header: "XCAFDoc_ShapeTool.hxx".}
proc setInstanceSHUO*(this: XCAFDocShapeTool; theShape: TopoDS_Shape): Handle[
    XCAFDocGraphNode] {.noSideEffect, cdecl, importcpp: "SetInstanceSHUO",
                       header: "XCAFDoc_ShapeTool.hxx".}
proc getAllSHUOInstances*(this: XCAFDocShapeTool;
                         theSHUO: Handle[XCAFDocGraphNode];
                         theSHUOShapeSeq: var TopToolsSequenceOfShape): bool {.
    noSideEffect, cdecl, importcpp: "GetAllSHUOInstances",
    header: "XCAFDoc_ShapeTool.hxx".}
proc findSHUO*(labels: TDF_LabelSequence; theSHUOAttr: var Handle[XCAFDocGraphNode]): bool {.
    cdecl, importcpp: "XCAFDoc_ShapeTool::FindSHUO(@)",
    header: "XCAFDoc_ShapeTool.hxx".}
proc expand*(this: var XCAFDocShapeTool; shape: TDF_Label): bool {.cdecl,
    importcpp: "Expand", header: "XCAFDoc_ShapeTool.hxx".}
proc getNamedProperties*(this: XCAFDocShapeTool; theLabel: TDF_Label;
                        theToCreate: bool = false): Handle[TDataStdNamedData] {.
    noSideEffect, cdecl, importcpp: "GetNamedProperties",
    header: "XCAFDoc_ShapeTool.hxx".}
proc getNamedProperties*(this: XCAFDocShapeTool; theShape: TopoDS_Shape;
                        theToCreate: bool = false): Handle[TDataStdNamedData] {.
    noSideEffect, cdecl, importcpp: "GetNamedProperties",
    header: "XCAFDoc_ShapeTool.hxx".}
proc dumpJson*(this: XCAFDocShapeTool; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_ShapeTool.hxx".}

