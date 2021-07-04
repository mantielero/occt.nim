##  Created on: 1990-12-11
##  Created by: Remi Lequette
##  Copyright (c) 1990-1999 Matra Datavision
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
  ../Standard/Standard_DefineAlloc, ../Standard/Standard_Handle, ../TopAbs/TopAbs,
  ../TopAbs/TopAbs_Orientation, ../TopLoc/TopLoc_Location, TopoDS_TShape

##  resolve name collisions with X11 headers

when defined(Convex):
  discard
## ! Describes a shape which
## ! - references an underlying shape with the potential
## ! to be given a location and an orientation
## ! - has a location for the underlying shape, giving its
## ! placement in the local coordinate system
## ! - has an orientation for the underlying shape, in
## ! terms of its geometry (as opposed to orientation in
## ! relation to other shapes).
## ! Note: A Shape is empty if it references an underlying
## ! shape which has an empty list of shapes.

type
  TopoDS_Shape* {.importcpp: "TopoDS_Shape", header: "TopoDS_Shape.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## a
                                                                                   ## NULL
                                                                                   ## Shape
                                                                                   ## referring
                                                                                   ## to
                                                                                   ## nothing.


proc constructTopoDS_Shape*(): TopoDS_Shape {.constructor,
    importcpp: "TopoDS_Shape(@)", header: "TopoDS_Shape.hxx".}
## !!!Ignored construct:  # OCCT_NO_RVALUE_REFERENCE [NewLine] ! Generalized move constructor, accepting also sub-classes
## ! (TopoDS_Shape hierarchy declares only fake sub-classes with no extra fields). template < class T2 > TopoDS_Shape ( T2 && theOther , typename std :: enable_if < opencascade :: std :: is_base_of < TopoDS_Shape , T2 > :: value > :: type * = 0 ) : myTShape ( std :: forward < T2 > ( theOther ) . myTShape ) , myLocation ( std :: forward < T2 > ( theOther ) . myLocation ) , myOrient ( std :: forward < T2 > ( theOther ) . myOrient ) { } ! Generalized move assignment operator. template < class T2 > typename std :: enable_if < opencascade :: std :: is_base_of < TopoDS_Shape , T2 > :: value , TopoDS_Shape > :: type & operator = ( T2 && theOther ) { myTShape = std :: forward < T2 > ( theOther ) . myTShape ; myLocation = std :: forward < T2 > ( theOther ) . myLocation ; myOrient = std :: forward < T2 > ( theOther ) . myOrient ; return * this ; } # [NewLine] ! Returns true if this shape is null. In other words, it
## ! references no underlying shape with the potential to
## ! be given a location and an orientation. Standard_Boolean IsNull ( ) const { return myTShape . IsNull ( ) ; } ! Destroys the reference to the underlying shape
## ! stored in this shape. As a result, this shape becomes null. void Nullify ( ) { myTShape . Nullify ( ) ; } ! Returns the shape local coordinate system. const TopLoc_Location & Location ( ) const { return myLocation ; } ! Sets the shape local coordinate system. void Location ( const TopLoc_Location & theLoc ) { myLocation = theLoc ; } ! Returns a  shape  similar to <me> with   the local
## ! coordinate system set to <Loc>. TopoDS_Shape Located ( const TopLoc_Location & theLoc ) const { TopoDS_Shape aShape ( * this ) ; aShape . Location ( theLoc ) ; return aShape ; } ! Returns the shape orientation. TopAbs_Orientation Orientation ( ) const { return myOrient ; } ! Sets the shape orientation. void Orientation ( TopAbs_Orientation theOrient ) { myOrient = theOrient ; } ! Returns  a    shape  similar  to  <me>   with  the
## ! orientation set to <Or>. TopoDS_Shape Oriented ( TopAbs_Orientation theOrient ) const { TopoDS_Shape aShape ( * this ) ; aShape . Orientation ( theOrient ) ; return aShape ; } ! Returns a handle to the actual shape implementation. const opencascade :: handle < TopoDS_TShape > & TShape ( ) const { return myTShape ; } ! Returns the value of the TopAbs_ShapeEnum
## ! enumeration that corresponds to this shape, for
## ! example VERTEX, EDGE, and so on.
## ! Exceptions
## ! Standard_NullObject if this shape is null. TopAbs_ShapeEnum ShapeType ( ) const { return myTShape -> ShapeType ( ) ; } ! Returns the free flag. Standard_Boolean Free ( ) const { return myTShape -> Free ( ) ; } ! Sets the free flag. void Free ( Standard_Boolean theIsFree ) { myTShape -> Free ( theIsFree ) ; } ! Returns the locked flag. Standard_Boolean Locked ( ) const { return myTShape -> Locked ( ) ; } ! Sets the locked flag. void Locked ( Standard_Boolean theIsLocked ) { myTShape -> Locked ( theIsLocked ) ; } ! Returns the modification flag. Standard_Boolean Modified ( ) const { return myTShape -> Modified ( ) ; } ! Sets the modification flag. void Modified ( Standard_Boolean theIsModified ) { myTShape -> Modified ( theIsModified ) ; } ! Returns the checked flag. Standard_Boolean Checked ( ) const { return myTShape -> Checked ( ) ; } ! Sets the checked flag. void Checked ( Standard_Boolean theIsChecked ) { myTShape -> Checked ( theIsChecked ) ; } ! Returns the orientability flag. Standard_Boolean Orientable ( ) const { return myTShape -> Orientable ( ) ; } ! Sets the orientability flag. void Orientable ( const Standard_Boolean theIsOrientable ) { myTShape -> Orientable ( theIsOrientable ) ; } ! Returns the closedness flag. Standard_Boolean Closed ( ) const { return myTShape -> Closed ( ) ; } ! Sets the closedness flag. void Closed ( Standard_Boolean theIsClosed ) { myTShape -> Closed ( theIsClosed ) ; } ! Returns the infinity flag. Standard_Boolean Infinite ( ) const { return myTShape -> Infinite ( ) ; } ! Sets the infinity flag. void Infinite ( Standard_Boolean theIsInfinite ) { myTShape -> Infinite ( theIsInfinite ) ; } ! Returns the convexness flag. Standard_Boolean Convex ( ) const { return myTShape -> Convex ( ) ; } ! Sets the convexness flag. void Convex ( Standard_Boolean theIsConvex ) { myTShape -> Convex ( theIsConvex ) ; } ! Multiplies the Shape location by thePosition. void Move ( const TopLoc_Location & thePosition ) { myLocation = thePosition * myLocation ; } ! Returns a shape similar to <me> with a location multiplied by thePosition. TopoDS_Shape Moved ( const TopLoc_Location & thePosition ) const { TopoDS_Shape aShape ( * this ) ; aShape . Move ( thePosition ) ; return aShape ; } ! Reverses the orientation, using the Reverse method
## ! from the TopAbs package. void Reverse ( ) { myOrient = TopAbs :: Reverse ( myOrient ) ; } ! Returns    a shape  similar    to  <me>  with  the
## ! orientation  reversed, using  the   Reverse method
## ! from the TopAbs package. TopoDS_Shape Reversed ( ) const { TopoDS_Shape aShape ( * this ) ; aShape . Reverse ( ) ; return aShape ; } ! Complements the orientation, using the  Complement
## ! method from the TopAbs package. void Complement ( ) { myOrient = TopAbs :: Complement ( myOrient ) ; } ! Returns  a   shape  similar  to   <me>   with  the
## ! orientation complemented,  using   the  Complement
## ! method from the TopAbs package. TopoDS_Shape Complemented ( ) const { TopoDS_Shape aShape ( * this ) ; aShape . Complement ( ) ; return aShape ; } ! Updates the Shape Orientation by composition with theOrient,
## ! using the Compose method from the TopAbs package. void Compose ( TopAbs_Orientation theOrient ) { myOrient = TopAbs :: Compose ( myOrient , theOrient ) ; } ! Returns  a  shape   similar   to  <me>   with  the
## ! orientation composed with theOrient, using the
## ! Compose method from the TopAbs package. TopoDS_Shape Composed ( TopAbs_Orientation theOrient ) const { TopoDS_Shape aShape ( * this ) ; aShape . Compose ( theOrient ) ; return aShape ; } ! Returns the number of direct sub-shapes (children).
## ! @sa TopoDS_Iterator for accessing sub-shapes Standard_Integer NbChildren ( ) const { return myTShape . IsNull ( ) ? 0 : myTShape -> NbChildren ( ) ; } ! Returns True if two shapes  are partners, i.e.  if
## ! they   share   the   same  TShape.  Locations  and
## ! Orientations may differ. Standard_Boolean IsPartner ( const TopoDS_Shape & theOther ) const { return ( myTShape == theOther . myTShape ) ; } ! Returns True if two shapes are same, i.e.  if they
## ! share  the  same TShape  with the same  Locations.
## ! Orientations may differ. Standard_Boolean IsSame ( const TopoDS_Shape & theOther ) const { return myTShape == theOther . myTShape && myLocation == theOther . myLocation ; } ! Returns True if two shapes are equal, i.e. if they
## ! share the same TShape with  the same Locations and
## ! Orientations. Standard_Boolean IsEqual ( const TopoDS_Shape & theOther ) const { return myTShape == theOther . myTShape && myLocation == theOther . myLocation && myOrient == theOther . myOrient ; } Standard_Boolean operator == ( const TopoDS_Shape & theOther ) const { return IsEqual ( theOther ) ; } ! Negation of the IsEqual method. Standard_Boolean IsNotEqual ( const TopoDS_Shape & theOther ) const { return ! IsEqual ( theOther ) ; } Standard_Boolean operator != ( const TopoDS_Shape & theOther ) const { return IsNotEqual ( theOther ) ; } ! Returns a hashed value denoting <me>. This value is in the range [1, theUpperBound]. It is computed from the
## ! TShape and the Location. The Orientation is not used.
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound] Standard_Integer HashCode ( Standard_Integer theUpperBound ) const ;
## Error: identifier expected, but got: ! Generalized move constructor, accepting also sub-classes
## ! (TopoDS_Shape hierarchy declares only fake sub-classes with no extra fields).!!!

proc EmptyCopy*(this: var TopoDS_Shape) {.importcpp: "EmptyCopy",
                                      header: "TopoDS_Shape.hxx".}
proc EmptyCopied*(this: TopoDS_Shape): TopoDS_Shape {.noSideEffect,
    importcpp: "EmptyCopied", header: "TopoDS_Shape.hxx".}
proc TShape*(this: var TopoDS_Shape; theTShape: handle[TopoDS_TShape]) {.
    importcpp: "TShape", header: "TopoDS_Shape.hxx".}
proc DumpJson*(this: TopoDS_Shape; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TopoDS_Shape.hxx".}
## ! Computes a hash code for the given shape, in the range [1, theUpperBound]
## ! @param theShape the shape which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theShape: TopoDS_Shape; theUpperBound: Standard_Integer): Standard_Integer =
  discard