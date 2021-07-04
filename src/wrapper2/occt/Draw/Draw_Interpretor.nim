##  Created on: 1995-02-23
##  Created by: Remi LEQUETTE
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Macro, ../Standard/Standard_Boolean, Draw_PInterp,
  ../Standard/Standard_SStream, ../Standard/Standard_CString,
  ../Standard/Standard_Integer, ../Standard/Standard_Real

discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
type
  Draw_Interpretor* {.importcpp: "Draw_Interpretor",
                     header: "Draw_Interpretor.hxx", bycopy.} = object ## ! Global callback function definition
                                                                  ## ! Callback implementation for global function definition
                                                                  ## ! Empty constructor
                                                                  ## ! Destructor
    ## !< file descriptor of log file

  Draw_InterpretorCommandFunction* = proc (theDI: var Draw_Interpretor;
                                        theArgNb: Standard_Integer;
                                        theArgVec: cstringArray): Standard_Integer
  Draw_InterpretorCallBackData* {.importcpp: "Draw_Interpretor::CallBackData",
                                 header: "Draw_Interpretor.hxx", bycopy.} = object ## !
                                                                              ## Main
                                                                              ## constructor
    myDI* {.importc: "myDI".}: ptr Draw_Interpretor ## !< pointer to Draw Interpretor
                                               ##  make sure allocation and de-allocation is done by the same memory allocator


proc constructDraw_InterpretorCallBackData*(theDI: ptr Draw_Interpretor): Draw_InterpretorCallBackData {.
    constructor, importcpp: "Draw_Interpretor::CallBackData(@)",
    header: "Draw_Interpretor.hxx".}
proc destroyDraw_InterpretorCallBackData*(this: var Draw_InterpretorCallBackData) {.
    importcpp: "#.~CallBackData()", header: "Draw_Interpretor.hxx".}
proc Invoke*(this: var Draw_InterpretorCallBackData; theDI: var Draw_Interpretor;
            theArgNb: Standard_Integer; theArgVec: cstringArray): Standard_Integer {.
    importcpp: "Invoke", header: "Draw_Interpretor.hxx".}
proc constructDraw_Interpretor*(): Draw_Interpretor {.constructor,
    importcpp: "Draw_Interpretor(@)", header: "Draw_Interpretor.hxx".}
proc Init*(this: var Draw_Interpretor) {.importcpp: "Init",
                                     header: "Draw_Interpretor.hxx".}
proc Add*(this: var Draw_Interpretor; theCommandName: Standard_CString;
         theHelp: Standard_CString; theFunction: Draw_InterpretorCommandFunction;
         theGroup: Standard_CString = "User Commands") {.importcpp: "Add",
    header: "Draw_Interpretor.hxx".}
proc Add*(this: var Draw_Interpretor; theCommandName: Standard_CString;
         theHelp: Standard_CString; theFileName: Standard_CString;
         theFunction: Draw_InterpretorCommandFunction;
         theGroup: Standard_CString = "User Commands") {.importcpp: "Add",
    header: "Draw_Interpretor.hxx".}
## !!!Ignored construct:  ! Creates a new command with name <theCommandName>, help string <theHelp> in group <theGroup>.
## ! @param theObjPtr   callback class instance
## ! @param theMethod   callback implementation
## ! @param theFileName the name of the file that contains the implementation of the command template < typename theHandleType > [end of template] inline void Add ( Standard_CString theCommandName , Standard_CString theHelp , Standard_CString theFileName , const theHandleType & theObjPtr , typename Draw_Interpretor :: CallBackDataMethod < theHandleType > :: methodType theMethod , Standard_CString theGroup ) { Draw_Interpretor :: CallBackDataMethod < theHandleType > * aCallback = new Draw_Interpretor :: CallBackDataMethod < theHandleType > ( this , theObjPtr , theMethod ) ; add ( theCommandName , theHelp , theFileName , aCallback , theGroup ) ; } ! Removes <theCommandName>, returns true if success (the command existed). Standard_Boolean Remove ( const Standard_CString theCommandName ) ;
## Error: token expected: ) but got: ::!!!

proc Result*(this: Draw_Interpretor): Standard_CString {.noSideEffect,
    importcpp: "Result", header: "Draw_Interpretor.hxx".}
proc Reset*(this: var Draw_Interpretor) {.importcpp: "Reset",
                                      header: "Draw_Interpretor.hxx".}
proc Append*(this: var Draw_Interpretor; theResult: Standard_CString): var Draw_Interpretor {.
    importcpp: "Append", header: "Draw_Interpretor.hxx".}
proc `<<`*(this: var Draw_Interpretor; theResult: Standard_CString): var Draw_Interpretor {.
    importcpp: "(# << #)", header: "Draw_Interpretor.hxx".}
proc Append*(this: var Draw_Interpretor; theResult: TCollection_AsciiString): var Draw_Interpretor {.
    importcpp: "Append", header: "Draw_Interpretor.hxx".}
proc `<<`*(this: var Draw_Interpretor; theResult: TCollection_AsciiString): var Draw_Interpretor {.
    importcpp: "(# << #)", header: "Draw_Interpretor.hxx".}
proc Append*(this: var Draw_Interpretor; theResult: TCollection_ExtendedString): var Draw_Interpretor {.
    importcpp: "Append", header: "Draw_Interpretor.hxx".}
proc `<<`*(this: var Draw_Interpretor; theResult: TCollection_ExtendedString): var Draw_Interpretor {.
    importcpp: "(# << #)", header: "Draw_Interpretor.hxx".}
proc Append*(this: var Draw_Interpretor; theResult: Standard_Integer): var Draw_Interpretor {.
    importcpp: "Append", header: "Draw_Interpretor.hxx".}
proc `<<`*(this: var Draw_Interpretor; theResult: Standard_Integer): var Draw_Interpretor {.
    importcpp: "(# << #)", header: "Draw_Interpretor.hxx".}
proc Append*(this: var Draw_Interpretor; theResult: Standard_Real): var Draw_Interpretor {.
    importcpp: "Append", header: "Draw_Interpretor.hxx".}
proc `<<`*(this: var Draw_Interpretor; theResult: Standard_Real): var Draw_Interpretor {.
    importcpp: "(# << #)", header: "Draw_Interpretor.hxx".}
proc Append*(this: var Draw_Interpretor; theResult: Standard_SStream): var Draw_Interpretor {.
    importcpp: "Append", header: "Draw_Interpretor.hxx".}
proc `<<`*(this: var Draw_Interpretor; theResult: Standard_SStream): var Draw_Interpretor {.
    importcpp: "(# << #)", header: "Draw_Interpretor.hxx".}
proc AppendElement*(this: var Draw_Interpretor; theResult: Standard_CString) {.
    importcpp: "AppendElement", header: "Draw_Interpretor.hxx".}
proc Eval*(this: var Draw_Interpretor; theScript: Standard_CString): Standard_Integer {.
    importcpp: "Eval", header: "Draw_Interpretor.hxx".}
proc RecordAndEval*(this: var Draw_Interpretor; theScript: Standard_CString;
                   theFlags: Standard_Integer = 0): Standard_Integer {.
    importcpp: "RecordAndEval", header: "Draw_Interpretor.hxx".}
proc EvalFile*(this: var Draw_Interpretor; theFileName: Standard_CString): Standard_Integer {.
    importcpp: "EvalFile", header: "Draw_Interpretor.hxx".}
proc PrintHelp*(this: var Draw_Interpretor; theCommandName: Standard_CString): Standard_Integer {.
    importcpp: "PrintHelp", header: "Draw_Interpretor.hxx".}
proc Complete*(theScript: Standard_CString): Standard_Boolean {.
    importcpp: "Draw_Interpretor::Complete(@)", header: "Draw_Interpretor.hxx".}
proc destroyDraw_Interpretor*(this: var Draw_Interpretor) {.
    importcpp: "#.~Draw_Interpretor()", header: "Draw_Interpretor.hxx".}
proc constructDraw_Interpretor*(theInterp: Draw_PInterp): Draw_Interpretor {.
    constructor, importcpp: "Draw_Interpretor(@)", header: "Draw_Interpretor.hxx".}
proc Set*(this: var Draw_Interpretor; theInterp: Draw_PInterp) {.importcpp: "Set",
    header: "Draw_Interpretor.hxx".}
proc Interp*(this: Draw_Interpretor): Draw_PInterp {.noSideEffect,
    importcpp: "Interp", header: "Draw_Interpretor.hxx".}
proc SetDoLog*(this: var Draw_Interpretor; theDoLog: Standard_Boolean) {.
    importcpp: "SetDoLog", header: "Draw_Interpretor.hxx".}
proc SetDoEcho*(this: var Draw_Interpretor; theDoEcho: Standard_Boolean) {.
    importcpp: "SetDoEcho", header: "Draw_Interpretor.hxx".}
proc GetDoLog*(this: Draw_Interpretor): Standard_Boolean {.noSideEffect,
    importcpp: "GetDoLog", header: "Draw_Interpretor.hxx".}
proc GetDoEcho*(this: Draw_Interpretor): Standard_Boolean {.noSideEffect,
    importcpp: "GetDoEcho", header: "Draw_Interpretor.hxx".}
proc ResetLog*(this: var Draw_Interpretor) {.importcpp: "ResetLog",
    header: "Draw_Interpretor.hxx".}
proc AddLog*(this: var Draw_Interpretor; theStr: Standard_CString) {.
    importcpp: "AddLog", header: "Draw_Interpretor.hxx".}
proc GetLog*(this: var Draw_Interpretor): TCollection_AsciiString {.
    importcpp: "GetLog", header: "Draw_Interpretor.hxx".}
proc GetLogFileDescriptor*(this: var Draw_Interpretor): Standard_Integer {.
    importcpp: "GetLogFileDescriptor", header: "Draw_Interpretor.hxx".}
proc ToColorize*(this: Draw_Interpretor): Standard_Boolean {.noSideEffect,
    importcpp: "ToColorize", header: "Draw_Interpretor.hxx".}
proc SetToColorize*(this: var Draw_Interpretor; theToColorize: Standard_Boolean) {.
    importcpp: "SetToColorize", header: "Draw_Interpretor.hxx".}