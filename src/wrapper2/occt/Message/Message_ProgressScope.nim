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

## !!!Ignored construct:  # _Message_ProgressScope_HeaderFile [NewLine] # _Message_ProgressScope_HeaderFile [NewLine] # < Standard_Assert . hxx > [NewLine] # < Standard_TypeDef . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Precision . hxx > [NewLine] # < TCollection_AsciiString . hxx > [NewLine] class Message_ProgressRange ;
## Error: token expected: :: but got: *!!!

discard "forward decl of Message_ProgressIndicator"
type
  MessageProgressScope* {.importcpp: "Message_ProgressScope",
                         header: "Message_ProgressScope.hxx", bycopy.} = object ## ! @name
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
proc constructMessageProgressScope*(): MessageProgressScope {.constructor,
    importcpp: "Message_ProgressScope(@)", header: "Message_ProgressScope.hxx".}
proc constructMessageProgressScope*(theRange: MessageProgressRange;
                                   theName: TCollectionAsciiString;
                                   theMax: StandardReal;
                                   isInfinite: StandardBoolean = false): MessageProgressScope {.
    constructor, importcpp: "Message_ProgressScope(@)",
    header: "Message_ProgressScope.hxx".}
proc constructMessageProgressScope*[N: static[csize_t]](
    theRange: MessageProgressRange; theName: array[n, char]; theMax: StandardReal;
    isInfinite: StandardBoolean = false): MessageProgressScope {.constructor,
    importcpp: "Message_ProgressScope(@)", header: "Message_ProgressScope.hxx".}
proc constructMessageProgressScope*(theRange: MessageProgressRange;
                                   theName: ptr MessageProgressScopeNullString;
                                   theMax: StandardReal;
                                   isInfinite: StandardBoolean = false): MessageProgressScope {.
    constructor, importcpp: "Message_ProgressScope(@)",
    header: "Message_ProgressScope.hxx".}
proc setName*(this: var MessageProgressScope; theName: TCollectionAsciiString) {.
    importcpp: "SetName", header: "Message_ProgressScope.hxx".}
proc setName*[N: static[csize_t]](this: var MessageProgressScope;
                                theName: array[n, char]) {.importcpp: "SetName",
    header: "Message_ProgressScope.hxx".}
proc userBreak*(this: MessageProgressScope): StandardBoolean {.noSideEffect,
    importcpp: "UserBreak", header: "Message_ProgressScope.hxx".}
proc more*(this: MessageProgressScope): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "Message_ProgressScope.hxx".}
proc next*(this: var MessageProgressScope; theStep: StandardReal = 1.0): MessageProgressRange {.
    importcpp: "Next", header: "Message_ProgressScope.hxx".}
proc show*(this: var MessageProgressScope) {.importcpp: "Show",
    header: "Message_ProgressScope.hxx".}
proc isActive*(this: MessageProgressScope): StandardBoolean {.noSideEffect,
    importcpp: "IsActive", header: "Message_ProgressScope.hxx".}
proc name*(this: MessageProgressScope): StandardCString {.noSideEffect,
    importcpp: "Name", header: "Message_ProgressScope.hxx".}
proc parent*(this: MessageProgressScope): ptr MessageProgressScope {.noSideEffect,
    importcpp: "Parent", header: "Message_ProgressScope.hxx".}
proc maxValue*(this: MessageProgressScope): StandardReal {.noSideEffect,
    importcpp: "MaxValue", header: "Message_ProgressScope.hxx".}
proc value*(this: MessageProgressScope): StandardReal {.noSideEffect,
    importcpp: "Value", header: "Message_ProgressScope.hxx".}
proc isInfinite*(this: MessageProgressScope): StandardBoolean {.noSideEffect,
    importcpp: "IsInfinite", header: "Message_ProgressScope.hxx".}
proc getPortion*(this: MessageProgressScope): StandardReal {.noSideEffect,
    importcpp: "GetPortion", header: "Message_ProgressScope.hxx".}
proc destroyMessageProgressScope*(this: var MessageProgressScope) {.
    importcpp: "#.~Message_ProgressScope()", header: "Message_ProgressScope.hxx".}
proc close*(this: var MessageProgressScope) {.importcpp: "Close",
    header: "Message_ProgressScope.hxx".}
## =======================================================================
## function : Message_ProgressScope
## purpose  :
## =======================================================================

## !!!Ignored construct:  inline Message_ProgressScope :: Message_ProgressScope ( Message_ProgressIndicator * theProgress ) : myProgress ( theProgress ) , myParent ( 0 ) , myName ( 0 ) , myStart ( 0.0 ) , myPortion ( 1.0 ) , myMax ( 1.0 ) , myValue ( 0.0 ) , myIsActive ( theProgress != NULL ) , myIsOwnName ( false ) , myIsInfinite ( false ) { } =======================================================================
## function : Message_ProgressScope
## purpose  :
## ======================================================================= inline Message_ProgressScope :: Message_ProgressScope ( const Message_ProgressRange & theRange , const TCollection_AsciiString & theName , Standard_Real theMax , Standard_Boolean isInfinite ) : myProgress ( theRange . myParentScope != NULL ? theRange . myParentScope -> myProgress : NULL ) , myParent ( theRange . myParentScope ) , myName ( NULL ) , myStart ( theRange . myStart ) , myPortion ( theRange . myDelta ) , myMax ( Max ( 1.e-6 , theMax ) ) ,  protection against zero range myValue ( 0.0 ) , myIsActive ( myProgress != NULL && ! theRange . myWasUsed ) , myIsOwnName ( false ) , myIsInfinite ( isInfinite ) { SetName ( theName ) ; Standard_ASSERT_VOID ( ! theRange . myWasUsed , Message_ProgressRange is used to initialize more than one scope ) ; theRange . myWasUsed = true ;  Disarm the range } =======================================================================
## function : Message_ProgressScope
## purpose  :
## ======================================================================= template < size_t N > Message_ProgressScope :: Message_ProgressScope ( const Message_ProgressRange & theRange , const char ( & theName ) [ N ] , Standard_Real theMax , Standard_Boolean isInfinite ) : myProgress ( theRange . myParentScope != NULL ? theRange . myParentScope -> myProgress : NULL ) , myParent ( theRange . myParentScope ) , myName ( theName ) , myStart ( theRange . myStart ) , myPortion ( theRange . myDelta ) , myMax ( Max ( 1.e-6 , theMax ) ) ,  protection against zero range myValue ( 0.0 ) , myIsActive ( myProgress != NULL && ! theRange . myWasUsed ) , myIsOwnName ( false ) , myIsInfinite ( isInfinite ) { Standard_ASSERT_VOID ( ! theRange . myWasUsed , Message_ProgressRange is used to initialize more than one scope ) ; theRange . myWasUsed = true ;  Disarm the range } =======================================================================
## function : Message_ProgressScope
## purpose  :
## ======================================================================= inline Message_ProgressScope :: Message_ProgressScope ( const Message_ProgressRange & theRange , const NullString * , Standard_Real theMax , Standard_Boolean isInfinite ) : myProgress ( theRange . myParentScope != NULL ? theRange . myParentScope -> myProgress : NULL ) , myParent ( theRange . myParentScope ) , myName ( NULL ) , myStart ( theRange . myStart ) , myPortion ( theRange . myDelta ) , myMax ( Max ( 1.e-6 , theMax ) ) ,  protection against zero range myValue ( 0.0 ) , myIsActive ( myProgress != NULL && ! theRange . myWasUsed ) , myIsOwnName ( false ) , myIsInfinite ( isInfinite ) { Standard_ASSERT_VOID ( ! theRange . myWasUsed , Message_ProgressRange is used to initialize more than one scope ) ; theRange . myWasUsed = true ;  Disarm the range } =======================================================================
## function : Close
## purpose  :
## ======================================================================= inline void Message_ProgressScope :: Close ( ) { if ( ! myIsActive ) { return ; }  Advance indicator to the end of the scope Standard_Real aCurr = localToGlobal ( myValue ) ; myValue = ( myIsInfinite ? Precision :: Infinite ( ) : myMax ) ; Standard_Real aDelta = myPortion - aCurr ; if ( aDelta > 0.0 ) { myProgress -> Increment ( aDelta , * this ) ; } Standard_ASSERT_VOID ( myParent == 0 || myParent -> myIsActive , Parent progress scope has been closed before child ) ; myIsActive = false ; } =======================================================================
## function : UserBreak
## purpose  :
## ======================================================================= inline Standard_Boolean Message_ProgressScope :: UserBreak ( ) const { return myProgress && myProgress -> UserBreak ( ) ; } =======================================================================
## function : Next
## purpose  :
## ======================================================================= inline Message_ProgressRange Message_ProgressScope :: Next ( Standard_Real theStep ) { if ( myIsActive && theStep > 0.0 ) { Standard_Real aCurr = localToGlobal ( myValue ) ; Standard_Real aNext = localToGlobal ( myValue += theStep ) ; Standard_Real aDelta = aNext - aCurr ; if ( aDelta > 0.0 ) { return Message_ProgressRange ( * this , myStart + aCurr , aDelta ) ; } } return Message_ProgressRange ( ) ; } =======================================================================
## function : Show
## purpose  :
## ======================================================================= inline void Message_ProgressScope :: Show ( ) { if ( myIsActive ) { myProgress -> Show ( * this , Standard_True ) ; } } =======================================================================
## function : localToGlobal
## purpose  :
## ======================================================================= inline Standard_Real Message_ProgressScope :: localToGlobal ( const Standard_Real theVal ) const { if ( theVal <= 0.0 ) return 0.0 ; if ( ! myIsInfinite ) { if ( myMax - theVal < RealSmall ( ) ) return myPortion ; return myPortion * theVal / myMax ; } double x = theVal / myMax ;  return myPortion * ( 1. - std::exp ( -x ) ); // exponent return myPortion * x / ( 1.0 + x ) ;  hyperbola } =======================================================================
## function : Value
## purpose  :
## ======================================================================= inline Standard_Real Message_ProgressScope :: Value ( ) const { if ( ! myIsActive ) { return myIsInfinite ? Precision :: Infinite ( ) : myMax ; }  get current progress on the global scale counted
##  from the start of this scope Standard_Real aVal = myProgress -> GetPosition ( ) - myStart ;  if progress has not reached yet the start of this scope, return 0 if ( aVal <= 0.0 ) return 0.0 ;  if at end of the scope (or behind), report the maximum Standard_Real aDist = myPortion - aVal ; if ( aDist <= Precision :: Confusion ( ) ) return myIsInfinite ? Precision :: Infinite ( ) : myMax ;  map the value to the range of this scope [0, Max],
##  rounding up to integer, with small correction applied
##  to avoid rounding errors return std :: ceil ( myMax * aVal / ( myIsInfinite ? aDist : myPortion ) - Precision :: Confusion ( ) ) ; } #  _Message_ProgressScope_HeaderFile
## Error: token expected: :: but got: *!!!


