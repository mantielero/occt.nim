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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
type
  DrawInterpretor* {.importcpp: "Draw_Interpretor", header: "Draw_Interpretor.hxx",
                    bycopy.} = object ## ! Global callback function definition
                                   ## ! Callback implementation for global function definition
                                   ## ! Empty constructor
                                   ## ! Destructor
    ## !< file descriptor of log file

  DrawInterpretorCommandFunction* = proc (theDI: var DrawInterpretor;
                                       theArgNb: StandardInteger;
                                       theArgVec: cstringArray): StandardInteger
  DrawInterpretorCallBackData* {.importcpp: "Draw_Interpretor::CallBackData",
                                header: "Draw_Interpretor.hxx", bycopy.} = object ## !
                                                                             ## Main
                                                                             ## constructor
    myDI* {.importc: "myDI".}: ptr DrawInterpretor ## !< pointer to Draw Interpretor
                                              ##  make sure allocation and de-allocation is done by the same memory allocator


proc constructDrawInterpretorCallBackData*(theDI: ptr DrawInterpretor): DrawInterpretorCallBackData {.
    constructor, importcpp: "Draw_Interpretor::CallBackData(@)",
    header: "Draw_Interpretor.hxx".}
proc destroyDrawInterpretorCallBackData*(this: var DrawInterpretorCallBackData) {.
    importcpp: "#.~CallBackData()", header: "Draw_Interpretor.hxx".}
proc invoke*(this: var DrawInterpretorCallBackData; theDI: var DrawInterpretor;
            theArgNb: StandardInteger; theArgVec: cstringArray): StandardInteger {.
    importcpp: "Invoke", header: "Draw_Interpretor.hxx".}
proc constructDrawInterpretor*(): DrawInterpretor {.constructor,
    importcpp: "Draw_Interpretor(@)", header: "Draw_Interpretor.hxx".}
proc init*(this: var DrawInterpretor) {.importcpp: "Init",
                                    header: "Draw_Interpretor.hxx".}
proc add*(this: var DrawInterpretor; theCommandName: StandardCString;
         theHelp: StandardCString; theFunction: DrawInterpretorCommandFunction;
         theGroup: StandardCString = "User Commands") {.importcpp: "Add",
    header: "Draw_Interpretor.hxx".}
proc add*(this: var DrawInterpretor; theCommandName: StandardCString;
         theHelp: StandardCString; theFileName: StandardCString;
         theFunction: DrawInterpretorCommandFunction;
         theGroup: StandardCString = "User Commands") {.importcpp: "Add",
    header: "Draw_Interpretor.hxx".}
## !!!Ignored construct:  ! Creates a new command with name <theCommandName>, help string <theHelp> in group <theGroup>.
## ! @param theObjPtr   callback class instance
## ! @param theMethod   callback implementation
## ! @param theFileName the name of the file that contains the implementation of the command template < typename theHandleType > [end of template] inline void Add ( Standard_CString theCommandName , Standard_CString theHelp , Standard_CString theFileName , const theHandleType & theObjPtr , typename Draw_Interpretor :: CallBackDataMethod < theHandleType > :: methodType theMethod , Standard_CString theGroup ) { Draw_Interpretor :: CallBackDataMethod < theHandleType > * aCallback = new Draw_Interpretor :: CallBackDataMethod < theHandleType > ( this , theObjPtr , theMethod ) ; add ( theCommandName , theHelp , theFileName , aCallback , theGroup ) ; } ! Removes <theCommandName>, returns true if success (the command existed). Standard_Boolean Remove ( const Standard_CString theCommandName ) ;
## Error: token expected: ) but got: ::!!!

proc result*(this: DrawInterpretor): StandardCString {.noSideEffect,
    importcpp: "Result", header: "Draw_Interpretor.hxx".}
proc reset*(this: var DrawInterpretor) {.importcpp: "Reset",
                                     header: "Draw_Interpretor.hxx".}
proc append*(this: var DrawInterpretor; theResult: StandardCString): var DrawInterpretor {.
    importcpp: "Append", header: "Draw_Interpretor.hxx".}
proc `<<`*(this: var DrawInterpretor; theResult: StandardCString): var DrawInterpretor {.
    importcpp: "(# << #)", header: "Draw_Interpretor.hxx".}
proc append*(this: var DrawInterpretor; theResult: TCollectionAsciiString): var DrawInterpretor {.
    importcpp: "Append", header: "Draw_Interpretor.hxx".}
proc `<<`*(this: var DrawInterpretor; theResult: TCollectionAsciiString): var DrawInterpretor {.
    importcpp: "(# << #)", header: "Draw_Interpretor.hxx".}
proc append*(this: var DrawInterpretor; theResult: TCollectionExtendedString): var DrawInterpretor {.
    importcpp: "Append", header: "Draw_Interpretor.hxx".}
proc `<<`*(this: var DrawInterpretor; theResult: TCollectionExtendedString): var DrawInterpretor {.
    importcpp: "(# << #)", header: "Draw_Interpretor.hxx".}
proc append*(this: var DrawInterpretor; theResult: StandardInteger): var DrawInterpretor {.
    importcpp: "Append", header: "Draw_Interpretor.hxx".}
proc `<<`*(this: var DrawInterpretor; theResult: StandardInteger): var DrawInterpretor {.
    importcpp: "(# << #)", header: "Draw_Interpretor.hxx".}
proc append*(this: var DrawInterpretor; theResult: StandardReal): var DrawInterpretor {.
    importcpp: "Append", header: "Draw_Interpretor.hxx".}
proc `<<`*(this: var DrawInterpretor; theResult: StandardReal): var DrawInterpretor {.
    importcpp: "(# << #)", header: "Draw_Interpretor.hxx".}
proc append*(this: var DrawInterpretor; theResult: StandardSStream): var DrawInterpretor {.
    importcpp: "Append", header: "Draw_Interpretor.hxx".}
proc `<<`*(this: var DrawInterpretor; theResult: StandardSStream): var DrawInterpretor {.
    importcpp: "(# << #)", header: "Draw_Interpretor.hxx".}
proc appendElement*(this: var DrawInterpretor; theResult: StandardCString) {.
    importcpp: "AppendElement", header: "Draw_Interpretor.hxx".}
proc eval*(this: var DrawInterpretor; theScript: StandardCString): StandardInteger {.
    importcpp: "Eval", header: "Draw_Interpretor.hxx".}
proc recordAndEval*(this: var DrawInterpretor; theScript: StandardCString;
                   theFlags: StandardInteger = 0): StandardInteger {.
    importcpp: "RecordAndEval", header: "Draw_Interpretor.hxx".}
proc evalFile*(this: var DrawInterpretor; theFileName: StandardCString): StandardInteger {.
    importcpp: "EvalFile", header: "Draw_Interpretor.hxx".}
proc printHelp*(this: var DrawInterpretor; theCommandName: StandardCString): StandardInteger {.
    importcpp: "PrintHelp", header: "Draw_Interpretor.hxx".}
proc complete*(theScript: StandardCString): StandardBoolean {.
    importcpp: "Draw_Interpretor::Complete(@)", header: "Draw_Interpretor.hxx".}
proc destroyDrawInterpretor*(this: var DrawInterpretor) {.
    importcpp: "#.~Draw_Interpretor()", header: "Draw_Interpretor.hxx".}
proc constructDrawInterpretor*(theInterp: DrawPInterp): DrawInterpretor {.
    constructor, importcpp: "Draw_Interpretor(@)", header: "Draw_Interpretor.hxx".}
proc set*(this: var DrawInterpretor; theInterp: DrawPInterp) {.importcpp: "Set",
    header: "Draw_Interpretor.hxx".}
proc interp*(this: DrawInterpretor): DrawPInterp {.noSideEffect, importcpp: "Interp",
    header: "Draw_Interpretor.hxx".}
proc setDoLog*(this: var DrawInterpretor; theDoLog: StandardBoolean) {.
    importcpp: "SetDoLog", header: "Draw_Interpretor.hxx".}
proc setDoEcho*(this: var DrawInterpretor; theDoEcho: StandardBoolean) {.
    importcpp: "SetDoEcho", header: "Draw_Interpretor.hxx".}
proc getDoLog*(this: DrawInterpretor): StandardBoolean {.noSideEffect,
    importcpp: "GetDoLog", header: "Draw_Interpretor.hxx".}
proc getDoEcho*(this: DrawInterpretor): StandardBoolean {.noSideEffect,
    importcpp: "GetDoEcho", header: "Draw_Interpretor.hxx".}
proc resetLog*(this: var DrawInterpretor) {.importcpp: "ResetLog",
                                        header: "Draw_Interpretor.hxx".}
proc addLog*(this: var DrawInterpretor; theStr: StandardCString) {.
    importcpp: "AddLog", header: "Draw_Interpretor.hxx".}
proc getLog*(this: var DrawInterpretor): TCollectionAsciiString {.
    importcpp: "GetLog", header: "Draw_Interpretor.hxx".}
proc getLogFileDescriptor*(this: var DrawInterpretor): StandardInteger {.
    importcpp: "GetLogFileDescriptor", header: "Draw_Interpretor.hxx".}
proc toColorize*(this: DrawInterpretor): StandardBoolean {.noSideEffect,
    importcpp: "ToColorize", header: "Draw_Interpretor.hxx".}
proc setToColorize*(this: var DrawInterpretor; theToColorize: StandardBoolean) {.
    importcpp: "SetToColorize", header: "Draw_Interpretor.hxx".}

