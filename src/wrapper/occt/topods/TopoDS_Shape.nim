# /usr/include/opencascade/TopoDS_Shape.hxx --> occt/topods/TopoDS_Shape.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodsshape = "/usr/include/opencascade/TopoDS_Shape.hxx"
type
  TopoDS_Shape* {.importcpp: "TopoDS_Shape", header: headerTopodsshape, bycopy.} = object


proc `new`*(this: var TopoDS_Shape; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Shape::operator new", header: headerTopodsshape.}
proc `delete`*(this: var TopoDS_Shape; theAddress: pointer) {.
    importcpp: "TopoDS_Shape::operator delete", header: headerTopodsshape.}
proc `new[]`*(this: var TopoDS_Shape; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Shape::operator new[]", header: headerTopodsshape.}
proc `delete[]`*(this: var TopoDS_Shape; theAddress: pointer) {.
    importcpp: "TopoDS_Shape::operator delete[]", header: headerTopodsshape.}
proc `new`*(this: var TopoDS_Shape; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Shape::operator new", header: headerTopodsshape.}
proc `delete`*(this: var TopoDS_Shape; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Shape::operator delete", header: headerTopodsshape.}
proc constructTopoDS_Shape*(): TopoDS_Shape {.constructor,
    importcpp: "TopoDS_Shape(@)", header: headerTopodsshape.}
## !!!Ignored construct:  template < class T2 > [end of template] TopoDS_Shape ( T2 && theOther , typename std :: enable_if < opencascade :: std :: is_base_of < TopoDS_Shape , T2 > :: value > :: type * = 0 ) : myTShape ( std :: forward < T2 > ( theOther ) . myTShape ) , myLocation ( std :: forward < T2 > ( theOther ) . myLocation ) , myOrient ( std :: forward < T2 > ( theOther ) . myOrient ) { } template < class T2 > typename std :: enable_if < opencascade :: std :: is_base_of < TopoDS_Shape , T2 > :: value , TopoDS_Shape > :: type & operator = ( T2 && theOther ) { myTShape = std :: forward < T2 > ( theOther ) . myTShape ; myLocation = std :: forward < T2 > ( theOther ) . myLocation ; myOrient = std :: forward < T2 > ( theOther ) . myOrient ; return * this ; } Standard_Boolean IsNull ( ) const { return myTShape . IsNull ( ) ; } void Nullify ( ) { myTShape . Nullify ( ) ; } const TopLoc_Location & Location ( ) const { return myLocation ; } void Location ( const TopLoc_Location & theLoc ) { myLocation = theLoc ; } TopoDS_Shape Located ( const TopLoc_Location & theLoc ) const { TopoDS_Shape aShape ( * this ) ; aShape . Location ( theLoc ) ; return aShape ; } TopAbs_Orientation Orientation ( ) const { return myOrient ; } void Orientation ( TopAbs_Orientation theOrient ) { myOrient = theOrient ; } TopoDS_Shape Oriented ( TopAbs_Orientation theOrient ) const { TopoDS_Shape aShape ( * this ) ; aShape . Orientation ( theOrient ) ; return aShape ; } const opencascade :: handle < TopoDS_TShape > & TShape ( ) const { return myTShape ; } TopAbs_ShapeEnum ShapeType ( ) const { return myTShape -> ShapeType ( ) ; } Standard_Boolean Free ( ) const { return myTShape -> Free ( ) ; } void Free ( Standard_Boolean theIsFree ) { myTShape -> Free ( theIsFree ) ; } Standard_Boolean Locked ( ) const { return myTShape -> Locked ( ) ; } void Locked ( Standard_Boolean theIsLocked ) { myTShape -> Locked ( theIsLocked ) ; } Standard_Boolean Modified ( ) const { return myTShape -> Modified ( ) ; } void Modified ( Standard_Boolean theIsModified ) { myTShape -> Modified ( theIsModified ) ; } Standard_Boolean Checked ( ) const { return myTShape -> Checked ( ) ; } void Checked ( Standard_Boolean theIsChecked ) { myTShape -> Checked ( theIsChecked ) ; } Standard_Boolean Orientable ( ) const { return myTShape -> Orientable ( ) ; } void Orientable ( const Standard_Boolean theIsOrientable ) { myTShape -> Orientable ( theIsOrientable ) ; } Standard_Boolean Closed ( ) const { return myTShape -> Closed ( ) ; } void Closed ( Standard_Boolean theIsClosed ) { myTShape -> Closed ( theIsClosed ) ; } Standard_Boolean Infinite ( ) const { return myTShape -> Infinite ( ) ; } void Infinite ( Standard_Boolean theIsInfinite ) { myTShape -> Infinite ( theIsInfinite ) ; } Standard_Boolean Convex ( ) const { return myTShape -> Convex ( ) ; } void Convex ( Standard_Boolean theIsConvex ) { myTShape -> Convex ( theIsConvex ) ; } void Move ( const TopLoc_Location & thePosition ) { myLocation = thePosition * myLocation ; } TopoDS_Shape Moved ( const TopLoc_Location & thePosition ) const { TopoDS_Shape aShape ( * this ) ; aShape . Move ( thePosition ) ; return aShape ; } void Reverse ( ) { myOrient = TopAbs :: Reverse ( myOrient ) ; } TopoDS_Shape Reversed ( ) const { TopoDS_Shape aShape ( * this ) ; aShape . Reverse ( ) ; return aShape ; } void Complement ( ) { myOrient = TopAbs :: Complement ( myOrient ) ; } TopoDS_Shape Complemented ( ) const { TopoDS_Shape aShape ( * this ) ; aShape . Complement ( ) ; return aShape ; } void Compose ( TopAbs_Orientation theOrient ) { myOrient = TopAbs :: Compose ( myOrient , theOrient ) ; } TopoDS_Shape Composed ( TopAbs_Orientation theOrient ) const { TopoDS_Shape aShape ( * this ) ; aShape . Compose ( theOrient ) ; return aShape ; } Standard_Integer NbChildren ( ) const { return myTShape . IsNull ( ) ? 0 : myTShape -> NbChildren ( ) ; } Standard_Boolean IsPartner ( const TopoDS_Shape & theOther ) const { return ( myTShape == theOther . myTShape ) ; } Standard_Boolean IsSame ( const TopoDS_Shape & theOther ) const { return myTShape == theOther . myTShape && myLocation == theOther . myLocation ; } Standard_Boolean IsEqual ( const TopoDS_Shape & theOther ) const { return myTShape == theOther . myTShape && myLocation == theOther . myLocation && myOrient == theOther . myOrient ; } Standard_Boolean operator == ( const TopoDS_Shape & theOther ) const { return IsEqual ( theOther ) ; } Standard_Boolean IsNotEqual ( const TopoDS_Shape & theOther ) const { return ! IsEqual ( theOther ) ; } Standard_Boolean operator != ( const TopoDS_Shape & theOther ) const { return IsNotEqual ( theOther ) ; } Standard_Integer HashCode ( Standard_Integer theUpperBound ) const ;
## Error: token expected: ) but got: ::!!!

proc emptyCopy*(this: var TopoDS_Shape) {.importcpp: "EmptyCopy",
                                      header: headerTopodsshape.}
proc emptyCopied*(this: TopoDS_Shape): TopoDS_Shape {.noSideEffect,
    importcpp: "EmptyCopied", header: headerTopodsshape.}
proc tShape*(this: var TopoDS_Shape; theTShape: Handle[TopoDS_TShape]) {.
    importcpp: "TShape", header: headerTopodsshape.}
proc dumpJson*(this: TopoDS_Shape; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerTopodsshape.}
proc hashCode*(theShape: TopoDS_Shape; theUpperBound: StandardInteger): StandardInteger =
  discard
