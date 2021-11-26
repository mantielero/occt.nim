##  Created on: 2002-02-22
##  Created by: Andrey BETENEV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of Message_ProgressRange"
discard "forward decl of Message_ProgressIndicator"
type
  MessageProgressScope* {.importcpp: "Message_ProgressScope",
                         header: "Message_ProgressScope.hxx", bycopy.} = object of RootObj ## ! @name
                                                                           ## Preparation
                                                                           ## methods
                                                                           ## !
                                                                           ## Creates dummy
                                                                           ## scope.
                                                                           ## ! It can be
                                                                           ## safely
                                                                           ## passed to
                                                                           ## algorithms; no
                                                                           ## progress
                                                                           ## indication will be done.
                                                                           ## ! @name
                                                                           ## Advance by
                                                                           ## iterations
                                                                           ## !
                                                                           ## Returns true if
                                                                           ## ProgressIndicator
                                                                           ## signals
                                                                           ## UserBreak
                                                                           ## ! @name
                                                                           ## Auxiliary
                                                                           ## methods to use in
                                                                           ## ProgressIndicator
                                                                           ## ! Force
                                                                           ## update of
                                                                           ## presentation of the
                                                                           ## progress
                                                                           ## indicator.
                                                                           ## !
                                                                           ## Should not be
                                                                           ## called
                                                                           ## concurrently.
                                                                           ## ! @name
                                                                           ## Destruction,
                                                                           ## allocation
                                                                           ## !
                                                                           ## Destructor -
                                                                           ## closes the scope and adds its scale to the total
                                                                           ## progress
                                                                           ## ! @name
                                                                           ## Internal
                                                                           ## methods
                                                                           ## !
                                                                           ## Creates a
                                                                           ## top-level scope with
                                                                           ## default range [0,1] and step 1.
                                                                           ## !
                                                                           ## Called only by
                                                                           ## Message_ProgressIndicator
                                                                           ## constructor.
                                                                           ## ! Copy
                                                                           ## constructor is
                                                                           ## prohibited
    ## !< Pointer to progress indicator instance
    ## !< Pointer to parent scope
    ## !< Name of the operation being done in this scope, or null
    ## !< Start position on the global scale [0, 1]
    ## !< The portion of the global scale covered by this scope [0, 1]
    ## !< Maximal value of progress in this scope
    ## !< Current position advanced within this scope [0, Max]
    ## !< flag indicating armed/disarmed state
    ## !< flag indicating if name was allocated or not
    ## !< Option to advance by hyperbolic law


discard "forward decl of NullString"
proc newMessageProgressScope*(): MessageProgressScope {.cdecl, constructor,
    importcpp: "Message_ProgressScope(@)", dynlib: tkernel.}
proc newMessageProgressScope*(theRange: MessageProgressRange;
                             theName: TCollectionAsciiString; theMax: cfloat;
                             isInfinite: bool = false): MessageProgressScope {.cdecl,
    constructor, importcpp: "Message_ProgressScope(@)", dynlib: tkernel.}
proc newMessageProgressScope*[N: static[csize_t]](theRange: MessageProgressRange;
    theName: array[N, char]; theMax: cfloat; isInfinite: bool = false): MessageProgressScope {.
    cdecl, constructor, importcpp: "Message_ProgressScope(@)", dynlib: tkernel.}
proc newMessageProgressScope*(theRange: MessageProgressRange;
                             theName: ptr MessageProgressScopeNullString;
                             theMax: cfloat; isInfinite: bool = false): MessageProgressScope {.
    cdecl, constructor, importcpp: "Message_ProgressScope(@)", dynlib: tkernel.}
proc setName*(this: var MessageProgressScope; theName: TCollectionAsciiString) {.
    cdecl, importcpp: "SetName", dynlib: tkernel.}
proc setName*[N: static[csize_t]](this: var MessageProgressScope;
                                theName: array[N, char]) {.cdecl,
    importcpp: "SetName", dynlib: tkernel.}
proc userBreak*(this: MessageProgressScope): bool {.noSideEffect, cdecl,
    importcpp: "UserBreak", dynlib: tkernel.}
proc more*(this: MessageProgressScope): bool {.noSideEffect, cdecl, importcpp: "More",
    dynlib: tkernel.}
proc next*(this: var MessageProgressScope; theStep: cfloat = 1.0): MessageProgressRange {.
    cdecl, importcpp: "Next", dynlib: tkernel.}
proc show*(this: var MessageProgressScope) {.cdecl, importcpp: "Show", dynlib: tkernel.}
proc isActive*(this: MessageProgressScope): bool {.noSideEffect, cdecl,
    importcpp: "IsActive", dynlib: tkernel.}
proc name*(this: MessageProgressScope): cstring {.noSideEffect, cdecl,
    importcpp: "Name", dynlib: tkernel.}
proc parent*(this: MessageProgressScope): ptr MessageProgressScope {.noSideEffect,
    cdecl, importcpp: "Parent", dynlib: tkernel.}
proc maxValue*(this: MessageProgressScope): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxValue", dynlib: tkernel.}
proc value*(this: MessageProgressScope): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkernel.}
proc isInfinite*(this: MessageProgressScope): bool {.noSideEffect, cdecl,
    importcpp: "IsInfinite", dynlib: tkernel.}
proc getPortion*(this: MessageProgressScope): cfloat {.noSideEffect, cdecl,
    importcpp: "GetPortion", dynlib: tkernel.}
proc destroyMessageProgressScope*(this: var MessageProgressScope) {.cdecl,
    importcpp: "#.~Message_ProgressScope()", dynlib: tkernel.}
proc close*(this: var MessageProgressScope) {.cdecl, importcpp: "Close",
    dynlib: tkernel.}
## =======================================================================
## function : Message_ProgressScope
## purpose  :
## =======================================================================
##  inline Message_ProgressScope::Message_ProgressScope (Message_ProgressIndicator* theProgress)
##  : myProgress(theProgress),
##    myParent(0),
##    myName(0),
##    myStart(0.),
##    myPortion(1.),
##    myMax(1.),
##    myValue(0.),
##    myIsActive(theProgress != NULL),
##    myIsOwnName(false),
##    myIsInfinite(false)
##  {
##  }
##
## =======================================================================
## function : Message_ProgressScope
## purpose  :
## =======================================================================
##  inline Message_ProgressScope::Message_ProgressScope (const Message_ProgressRange& theRange,
##                                                       const TCollection_AsciiString& theName,
##                                                       Standard_Real theMax,
##                                                       Standard_Boolean isInfinite)
##  : myProgress (theRange.myParentScope != NULL ? theRange.myParentScope->myProgress : NULL),
##    myParent (theRange.myParentScope),
##    myName (NULL),
##    myStart (theRange.myStart),
##    myPortion (theRange.myDelta),
##    myMax (Max (1.e-6, theMax)), // protection against zero range
##    myValue (0.),
##    myIsActive (myProgress != NULL && !theRange.myWasUsed),
##    myIsOwnName (false),
##    myIsInfinite (isInfinite)
##  {
##    SetName (theName);
##    Standard_ASSERT_VOID (! theRange.myWasUsed, "Message_ProgressRange is used to initialize more than one scope");
##    theRange.myWasUsed = true; // Disarm the range
##  }
## =======================================================================
## function : Message_ProgressScope
## purpose  :
## =======================================================================
##  template<size_t N>
##  Message_ProgressScope::Message_ProgressScope (const Message_ProgressRange& theRange,
##                                                const char (&theName)[N],
##                                                Standard_Real theMax,
##                                                Standard_Boolean isInfinite)
##  : myProgress (theRange.myParentScope != NULL ? theRange.myParentScope->myProgress : NULL),
##    myParent (theRange.myParentScope),
##    myName (theName),
##    myStart (theRange.myStart),
##    myPortion (theRange.myDelta),
##    myMax (Max (1.e-6, theMax)), // protection against zero range
##    myValue (0.),
##    myIsActive (myProgress != NULL && !theRange.myWasUsed),
##    myIsOwnName (false),
##    myIsInfinite (isInfinite)
##  {
##    Standard_ASSERT_VOID (! theRange.myWasUsed, "Message_ProgressRange is used to initialize more than one scope");
##    theRange.myWasUsed = true; // Disarm the range
##  }
## =======================================================================
## function : Message_ProgressScope
## purpose  :
## =======================================================================
##  inline Message_ProgressScope::Message_ProgressScope (const Message_ProgressRange& theRange,
##                                                       const NullString* ,
##                                                       Standard_Real theMax,
##                                                       Standard_Boolean isInfinite)
##  : myProgress (theRange.myParentScope != NULL ? theRange.myParentScope->myProgress : NULL),
##    myParent (theRange.myParentScope),
##    myName (NULL),
##    myStart (theRange.myStart),
##    myPortion (theRange.myDelta),
##    myMax (Max (1.e-6, theMax)), // protection against zero range
##    myValue (0.),
##    myIsActive (myProgress != NULL && !theRange.myWasUsed),
##    myIsOwnName (false),
##    myIsInfinite (isInfinite)
##  {
##    Standard_ASSERT_VOID (! theRange.myWasUsed, "Message_ProgressRange is used to initialize more than one scope");
##    theRange.myWasUsed = true; // Disarm the range
##  }
## =======================================================================
## function : Close
## purpose  :
## =======================================================================

#proc close*(this: var MessageProgressScope) {.cdecl, importcpp: "Close",
#    dynlib: tkernel.}
## =======================================================================
## function : UserBreak
## purpose  :
## =======================================================================

#proc userBreak*(this: MessageProgressScope): bool {.noSideEffect, cdecl,
#    importcpp: "UserBreak", dynlib: tkernel.}
## =======================================================================
## function : Next
## purpose  :
## =======================================================================

#proc next*(this: var MessageProgressScope; theStep: cfloat): MessageProgressRange {.
#    cdecl, importcpp: "Next", dynlib: tkernel.}
## =======================================================================
## function : Show
## purpose  :
## =======================================================================

#proc show*(this: var MessageProgressScope) {.cdecl, importcpp: "Show", dynlib: tkernel.}
## =======================================================================
## function : localToGlobal
## purpose  :
## =======================================================================

#proc localToGlobal*(this: MessageProgressScope; theVal: cfloat): cfloat {.
#    noSideEffect, cdecl, importcpp: "localToGlobal", dynlib: tkernel.}
## =======================================================================
## function : Value
## purpose  :
## =======================================================================

#proc value*(this: MessageProgressScope): cfloat {.noSideEffect, cdecl,
#    importcpp: "Value", dynlib: tkernel.}