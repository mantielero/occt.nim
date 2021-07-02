##  Created on: 1998-04-01
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Standard_Transient"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_XY"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Message_Msg"
discard "forward decl of MoniTool_CaseData"
discard "forward decl of MoniTool_CaseData"
type
  HandleMoniToolCaseData* = Handle[MoniToolCaseData]

## ! This class is intended to record data attached to a case to be
## ! exploited.
## ! Cases can be :
## ! * internal, i.e. for immediate debug
## ! for instance, on an abnormal exception, fill a CaseData
## ! in a DB (see class DB) then look at its content by XSDRAW
## ! * to record abnormal situation, which cause a warning or fail
## ! message, for instance during a transfer
## ! This will allow, firstly to build a more comprehensive
## ! message (with associated data), secondly to help seeing
## ! "what happened"
## ! * to record data in order to fix a problem
## ! If a CASE is well defined and its fix is well known too,
## ! recording a CaseData which identifies the CASE will allow
## ! to furstherly call the appropriate fix routine
## !
## ! A CaseData is defined by
## ! * an optional CASE identifier
## ! If it is defined, this will allow systematic exploitation
## ! such as calling a fix routine
## ! * an optional Check Status, Warning or Fail, else it is Info
## ! * a NAME : it just allows to identify where this CaseData was
## ! created (help to debug)
## ! * a LIST OF DATA
## !
## ! Each Data has a type (integer, real etc...) and can have a name
## ! Hence, each data may be identified by :
## ! * its absolute rank (from 1 to NbData)
## ! * its name if it has one (exact matching)
## ! * else, an interpreted identifier, which gives the type and
## ! the rank in the type (for instance, first integer; etc)
## ! (See NameRank)

type
  MoniToolCaseData* {.importcpp: "MoniTool_CaseData",
                     header: "MoniTool_CaseData.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## CaseData
                                                                                      ## with
                                                                                      ## a
                                                                                      ## CaseId
                                                                                      ## and
                                                                                      ## a
                                                                                      ## Name
                                                                                      ##
                                                                                      ## !
                                                                                      ## (by
                                                                                      ## default
                                                                                      ## not
                                                                                      ## defined)


proc constructMoniToolCaseData*(caseid: StandardCString = "";
                               name: StandardCString = ""): MoniToolCaseData {.
    constructor, importcpp: "MoniTool_CaseData(@)", header: "MoniTool_CaseData.hxx".}
proc setCaseId*(this: var MoniToolCaseData; caseid: StandardCString) {.
    importcpp: "SetCaseId", header: "MoniTool_CaseData.hxx".}
proc setName*(this: var MoniToolCaseData; name: StandardCString) {.
    importcpp: "SetName", header: "MoniTool_CaseData.hxx".}
proc caseId*(this: MoniToolCaseData): StandardCString {.noSideEffect,
    importcpp: "CaseId", header: "MoniTool_CaseData.hxx".}
proc name*(this: MoniToolCaseData): StandardCString {.noSideEffect,
    importcpp: "Name", header: "MoniTool_CaseData.hxx".}
proc isCheck*(this: MoniToolCaseData): StandardBoolean {.noSideEffect,
    importcpp: "IsCheck", header: "MoniTool_CaseData.hxx".}
proc isWarning*(this: MoniToolCaseData): StandardBoolean {.noSideEffect,
    importcpp: "IsWarning", header: "MoniTool_CaseData.hxx".}
proc isFail*(this: MoniToolCaseData): StandardBoolean {.noSideEffect,
    importcpp: "IsFail", header: "MoniTool_CaseData.hxx".}
proc resetCheck*(this: var MoniToolCaseData) {.importcpp: "ResetCheck",
    header: "MoniTool_CaseData.hxx".}
proc setWarning*(this: var MoniToolCaseData) {.importcpp: "SetWarning",
    header: "MoniTool_CaseData.hxx".}
proc setFail*(this: var MoniToolCaseData) {.importcpp: "SetFail",
                                        header: "MoniTool_CaseData.hxx".}
proc setChange*(this: var MoniToolCaseData) {.importcpp: "SetChange",
    header: "MoniTool_CaseData.hxx".}
proc setReplace*(this: var MoniToolCaseData; num: StandardInteger) {.
    importcpp: "SetReplace", header: "MoniTool_CaseData.hxx".}
proc addData*(this: var MoniToolCaseData; val: Handle[StandardTransient];
             kind: StandardInteger; name: StandardCString = "") {.
    importcpp: "AddData", header: "MoniTool_CaseData.hxx".}
proc addRaised*(this: var MoniToolCaseData; theException: Handle[StandardFailure];
               name: StandardCString = "") {.importcpp: "AddRaised",
    header: "MoniTool_CaseData.hxx".}
proc addShape*(this: var MoniToolCaseData; sh: TopoDS_Shape;
              name: StandardCString = "") {.importcpp: "AddShape",
                                        header: "MoniTool_CaseData.hxx".}
proc addXYZ*(this: var MoniToolCaseData; aXYZ: GpXYZ; name: StandardCString = "") {.
    importcpp: "AddXYZ", header: "MoniTool_CaseData.hxx".}
proc addXY*(this: var MoniToolCaseData; aXY: GpXY; name: StandardCString = "") {.
    importcpp: "AddXY", header: "MoniTool_CaseData.hxx".}
proc addReal*(this: var MoniToolCaseData; val: StandardReal;
             name: StandardCString = "") {.importcpp: "AddReal",
                                       header: "MoniTool_CaseData.hxx".}
proc addReals*(this: var MoniToolCaseData; v1: StandardReal; v2: StandardReal;
              name: StandardCString = "") {.importcpp: "AddReals",
                                        header: "MoniTool_CaseData.hxx".}
proc addCPU*(this: var MoniToolCaseData; lastCPU: StandardReal;
            curCPU: StandardReal = 0; name: StandardCString = "") {.importcpp: "AddCPU",
    header: "MoniTool_CaseData.hxx".}
proc getCPU*(this: MoniToolCaseData): StandardReal {.noSideEffect,
    importcpp: "GetCPU", header: "MoniTool_CaseData.hxx".}
proc largeCPU*(this: MoniToolCaseData; maxCPU: StandardReal; lastCPU: StandardReal;
              curCPU: StandardReal = 0): StandardBoolean {.noSideEffect,
    importcpp: "LargeCPU", header: "MoniTool_CaseData.hxx".}
proc addGeom*(this: var MoniToolCaseData; geom: Handle[StandardTransient];
             name: StandardCString = "") {.importcpp: "AddGeom",
                                       header: "MoniTool_CaseData.hxx".}
proc addEntity*(this: var MoniToolCaseData; ent: Handle[StandardTransient];
               name: StandardCString = "") {.importcpp: "AddEntity",
    header: "MoniTool_CaseData.hxx".}
proc addText*(this: var MoniToolCaseData; text: StandardCString;
             name: StandardCString = "") {.importcpp: "AddText",
                                       header: "MoniTool_CaseData.hxx".}
proc addInteger*(this: var MoniToolCaseData; val: StandardInteger;
                name: StandardCString = "") {.importcpp: "AddInteger",
    header: "MoniTool_CaseData.hxx".}
proc addAny*(this: var MoniToolCaseData; val: Handle[StandardTransient];
            name: StandardCString = "") {.importcpp: "AddAny",
                                      header: "MoniTool_CaseData.hxx".}
proc removeData*(this: var MoniToolCaseData; num: StandardInteger) {.
    importcpp: "RemoveData", header: "MoniTool_CaseData.hxx".}
proc nbData*(this: MoniToolCaseData): StandardInteger {.noSideEffect,
    importcpp: "NbData", header: "MoniTool_CaseData.hxx".}
proc data*(this: MoniToolCaseData; nd: StandardInteger): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Data", header: "MoniTool_CaseData.hxx".}
proc getData*(this: MoniToolCaseData; nd: StandardInteger;
             `type`: Handle[StandardType]; val: var Handle[StandardTransient]): StandardBoolean {.
    noSideEffect, importcpp: "GetData", header: "MoniTool_CaseData.hxx".}
proc kind*(this: MoniToolCaseData; nd: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "Kind", header: "MoniTool_CaseData.hxx".}
proc name*(this: MoniToolCaseData; nd: StandardInteger): TCollectionAsciiString {.
    noSideEffect, importcpp: "Name", header: "MoniTool_CaseData.hxx".}
proc nameNum*(this: MoniToolCaseData; name: StandardCString): StandardInteger {.
    noSideEffect, importcpp: "NameNum", header: "MoniTool_CaseData.hxx".}
proc shape*(this: MoniToolCaseData; nd: StandardInteger): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "MoniTool_CaseData.hxx".}
proc xyz*(this: MoniToolCaseData; nd: StandardInteger; val: var GpXYZ): StandardBoolean {.
    noSideEffect, importcpp: "XYZ", header: "MoniTool_CaseData.hxx".}
proc xy*(this: MoniToolCaseData; nd: StandardInteger; val: var GpXY): StandardBoolean {.
    noSideEffect, importcpp: "XY", header: "MoniTool_CaseData.hxx".}
proc reals*(this: MoniToolCaseData; nd: StandardInteger; v1: var StandardReal;
           v2: var StandardReal): StandardBoolean {.noSideEffect, importcpp: "Reals",
    header: "MoniTool_CaseData.hxx".}
proc real*(this: MoniToolCaseData; nd: StandardInteger; val: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "Real", header: "MoniTool_CaseData.hxx".}
proc text*(this: MoniToolCaseData; nd: StandardInteger; text: var StandardCString): StandardBoolean {.
    noSideEffect, importcpp: "Text", header: "MoniTool_CaseData.hxx".}
proc integer*(this: MoniToolCaseData; nd: StandardInteger; val: var StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "Integer", header: "MoniTool_CaseData.hxx".}
proc msg*(this: MoniToolCaseData): MessageMsg {.noSideEffect, importcpp: "Msg",
    header: "MoniTool_CaseData.hxx".}
proc setDefWarning*(acode: StandardCString) {.
    importcpp: "MoniTool_CaseData::SetDefWarning(@)",
    header: "MoniTool_CaseData.hxx".}
proc setDefFail*(acode: StandardCString) {.importcpp: "MoniTool_CaseData::SetDefFail(@)",
                                        header: "MoniTool_CaseData.hxx".}
proc defCheck*(acode: StandardCString): StandardInteger {.
    importcpp: "MoniTool_CaseData::DefCheck(@)", header: "MoniTool_CaseData.hxx".}
proc setDefMsg*(casecode: StandardCString; mesdef: StandardCString) {.
    importcpp: "MoniTool_CaseData::SetDefMsg(@)", header: "MoniTool_CaseData.hxx".}
proc defMsg*(casecode: StandardCString): StandardCString {.
    importcpp: "MoniTool_CaseData::DefMsg(@)", header: "MoniTool_CaseData.hxx".}
type
  MoniToolCaseDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MoniTool_CaseData::get_type_name(@)",
                            header: "MoniTool_CaseData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MoniTool_CaseData::get_type_descriptor(@)",
    header: "MoniTool_CaseData.hxx".}
proc dynamicType*(this: MoniToolCaseData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_CaseData.hxx".}

