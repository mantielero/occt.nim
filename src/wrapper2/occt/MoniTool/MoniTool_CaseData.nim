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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TCollection/TCollection_AsciiString, ../TColStd/TColStd_SequenceOfTransient,
  ../TColStd/TColStd_SequenceOfInteger, ../TColStd/TColStd_SequenceOfAsciiString,
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../Standard/Standard_Type

discard "forward decl of Standard_Transient"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_XY"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Message_Msg"
discard "forward decl of MoniTool_CaseData"
discard "forward decl of MoniTool_CaseData"
type
  Handle_MoniTool_CaseData* = handle[MoniTool_CaseData]

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
  MoniTool_CaseData* {.importcpp: "MoniTool_CaseData",
                      header: "MoniTool_CaseData.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructMoniTool_CaseData*(caseid: Standard_CString = "";
                                name: Standard_CString = ""): MoniTool_CaseData {.
    constructor, importcpp: "MoniTool_CaseData(@)", header: "MoniTool_CaseData.hxx".}
proc SetCaseId*(this: var MoniTool_CaseData; caseid: Standard_CString) {.
    importcpp: "SetCaseId", header: "MoniTool_CaseData.hxx".}
proc SetName*(this: var MoniTool_CaseData; name: Standard_CString) {.
    importcpp: "SetName", header: "MoniTool_CaseData.hxx".}
proc CaseId*(this: MoniTool_CaseData): Standard_CString {.noSideEffect,
    importcpp: "CaseId", header: "MoniTool_CaseData.hxx".}
proc Name*(this: MoniTool_CaseData): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "MoniTool_CaseData.hxx".}
proc IsCheck*(this: MoniTool_CaseData): Standard_Boolean {.noSideEffect,
    importcpp: "IsCheck", header: "MoniTool_CaseData.hxx".}
proc IsWarning*(this: MoniTool_CaseData): Standard_Boolean {.noSideEffect,
    importcpp: "IsWarning", header: "MoniTool_CaseData.hxx".}
proc IsFail*(this: MoniTool_CaseData): Standard_Boolean {.noSideEffect,
    importcpp: "IsFail", header: "MoniTool_CaseData.hxx".}
proc ResetCheck*(this: var MoniTool_CaseData) {.importcpp: "ResetCheck",
    header: "MoniTool_CaseData.hxx".}
proc SetWarning*(this: var MoniTool_CaseData) {.importcpp: "SetWarning",
    header: "MoniTool_CaseData.hxx".}
proc SetFail*(this: var MoniTool_CaseData) {.importcpp: "SetFail",
    header: "MoniTool_CaseData.hxx".}
proc SetChange*(this: var MoniTool_CaseData) {.importcpp: "SetChange",
    header: "MoniTool_CaseData.hxx".}
proc SetReplace*(this: var MoniTool_CaseData; num: Standard_Integer) {.
    importcpp: "SetReplace", header: "MoniTool_CaseData.hxx".}
proc AddData*(this: var MoniTool_CaseData; val: handle[Standard_Transient];
             kind: Standard_Integer; name: Standard_CString = "") {.
    importcpp: "AddData", header: "MoniTool_CaseData.hxx".}
proc AddRaised*(this: var MoniTool_CaseData; theException: handle[Standard_Failure];
               name: Standard_CString = "") {.importcpp: "AddRaised",
    header: "MoniTool_CaseData.hxx".}
proc AddShape*(this: var MoniTool_CaseData; sh: TopoDS_Shape;
              name: Standard_CString = "") {.importcpp: "AddShape",
    header: "MoniTool_CaseData.hxx".}
proc AddXYZ*(this: var MoniTool_CaseData; aXYZ: gp_XYZ; name: Standard_CString = "") {.
    importcpp: "AddXYZ", header: "MoniTool_CaseData.hxx".}
proc AddXY*(this: var MoniTool_CaseData; aXY: gp_XY; name: Standard_CString = "") {.
    importcpp: "AddXY", header: "MoniTool_CaseData.hxx".}
proc AddReal*(this: var MoniTool_CaseData; val: Standard_Real;
             name: Standard_CString = "") {.importcpp: "AddReal",
                                        header: "MoniTool_CaseData.hxx".}
proc AddReals*(this: var MoniTool_CaseData; v1: Standard_Real; v2: Standard_Real;
              name: Standard_CString = "") {.importcpp: "AddReals",
    header: "MoniTool_CaseData.hxx".}
proc AddCPU*(this: var MoniTool_CaseData; lastCPU: Standard_Real;
            curCPU: Standard_Real = 0; name: Standard_CString = "") {.
    importcpp: "AddCPU", header: "MoniTool_CaseData.hxx".}
proc GetCPU*(this: MoniTool_CaseData): Standard_Real {.noSideEffect,
    importcpp: "GetCPU", header: "MoniTool_CaseData.hxx".}
proc LargeCPU*(this: MoniTool_CaseData; maxCPU: Standard_Real;
              lastCPU: Standard_Real; curCPU: Standard_Real = 0): Standard_Boolean {.
    noSideEffect, importcpp: "LargeCPU", header: "MoniTool_CaseData.hxx".}
proc AddGeom*(this: var MoniTool_CaseData; geom: handle[Standard_Transient];
             name: Standard_CString = "") {.importcpp: "AddGeom",
                                        header: "MoniTool_CaseData.hxx".}
proc AddEntity*(this: var MoniTool_CaseData; ent: handle[Standard_Transient];
               name: Standard_CString = "") {.importcpp: "AddEntity",
    header: "MoniTool_CaseData.hxx".}
proc AddText*(this: var MoniTool_CaseData; text: Standard_CString;
             name: Standard_CString = "") {.importcpp: "AddText",
                                        header: "MoniTool_CaseData.hxx".}
proc AddInteger*(this: var MoniTool_CaseData; val: Standard_Integer;
                name: Standard_CString = "") {.importcpp: "AddInteger",
    header: "MoniTool_CaseData.hxx".}
proc AddAny*(this: var MoniTool_CaseData; val: handle[Standard_Transient];
            name: Standard_CString = "") {.importcpp: "AddAny",
                                       header: "MoniTool_CaseData.hxx".}
proc RemoveData*(this: var MoniTool_CaseData; num: Standard_Integer) {.
    importcpp: "RemoveData", header: "MoniTool_CaseData.hxx".}
proc NbData*(this: MoniTool_CaseData): Standard_Integer {.noSideEffect,
    importcpp: "NbData", header: "MoniTool_CaseData.hxx".}
proc Data*(this: MoniTool_CaseData; nd: Standard_Integer): handle[Standard_Transient] {.
    noSideEffect, importcpp: "Data", header: "MoniTool_CaseData.hxx".}
proc GetData*(this: MoniTool_CaseData; nd: Standard_Integer;
             `type`: handle[Standard_Type]; val: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "GetData", header: "MoniTool_CaseData.hxx".}
proc Kind*(this: MoniTool_CaseData; nd: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Kind", header: "MoniTool_CaseData.hxx".}
proc Name*(this: MoniTool_CaseData; nd: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "Name", header: "MoniTool_CaseData.hxx".}
proc NameNum*(this: MoniTool_CaseData; name: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "NameNum", header: "MoniTool_CaseData.hxx".}
proc Shape*(this: MoniTool_CaseData; nd: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "MoniTool_CaseData.hxx".}
proc XYZ*(this: MoniTool_CaseData; nd: Standard_Integer; val: var gp_XYZ): Standard_Boolean {.
    noSideEffect, importcpp: "XYZ", header: "MoniTool_CaseData.hxx".}
proc XY*(this: MoniTool_CaseData; nd: Standard_Integer; val: var gp_XY): Standard_Boolean {.
    noSideEffect, importcpp: "XY", header: "MoniTool_CaseData.hxx".}
proc Reals*(this: MoniTool_CaseData; nd: Standard_Integer; v1: var Standard_Real;
           v2: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "Reals", header: "MoniTool_CaseData.hxx".}
proc Real*(this: MoniTool_CaseData; nd: Standard_Integer; val: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "Real", header: "MoniTool_CaseData.hxx".}
proc Text*(this: MoniTool_CaseData; nd: Standard_Integer; text: var Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "Text", header: "MoniTool_CaseData.hxx".}
proc Integer*(this: MoniTool_CaseData; nd: Standard_Integer;
             val: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "Integer", header: "MoniTool_CaseData.hxx".}
proc Msg*(this: MoniTool_CaseData): Message_Msg {.noSideEffect, importcpp: "Msg",
    header: "MoniTool_CaseData.hxx".}
proc SetDefWarning*(acode: Standard_CString) {.
    importcpp: "MoniTool_CaseData::SetDefWarning(@)",
    header: "MoniTool_CaseData.hxx".}
proc SetDefFail*(acode: Standard_CString) {.
    importcpp: "MoniTool_CaseData::SetDefFail(@)", header: "MoniTool_CaseData.hxx".}
proc DefCheck*(acode: Standard_CString): Standard_Integer {.
    importcpp: "MoniTool_CaseData::DefCheck(@)", header: "MoniTool_CaseData.hxx".}
proc SetDefMsg*(casecode: Standard_CString; mesdef: Standard_CString) {.
    importcpp: "MoniTool_CaseData::SetDefMsg(@)", header: "MoniTool_CaseData.hxx".}
proc DefMsg*(casecode: Standard_CString): Standard_CString {.
    importcpp: "MoniTool_CaseData::DefMsg(@)", header: "MoniTool_CaseData.hxx".}
type
  MoniTool_CaseDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MoniTool_CaseData::get_type_name(@)",
                              header: "MoniTool_CaseData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MoniTool_CaseData::get_type_descriptor(@)",
    header: "MoniTool_CaseData.hxx".}
proc DynamicType*(this: MoniTool_CaseData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_CaseData.hxx".}