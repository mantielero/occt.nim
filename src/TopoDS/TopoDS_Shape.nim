{.push header: "TopoDS_Shape.hxx".}


# Constructors and methods
proc constructor_TopoDS_Shape*(): TopoDS_Shape {.constructor,importcpp: "TopoDS_Shape".}
  ## Creates a NULL Shape referring to nothing.

proc ` new`*(this: var TopoDS_Shape, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Shape, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Shape, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Shape, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Shape, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Shape, pointer, pointer)  {.importcpp: "#  delete #".}

proc isNull*(this: TopoDS_Shape): bool  {.importcpp: "IsNull".}
  ## Returns true if this shape is null. In other words, it references no
  ## underlying shape with the potential to be given a location and an
  ## orientation.

proc nullify*(this: var TopoDS_Shape)  {.importcpp: "Nullify".}
  ## Destroys the reference to the underlying shape stored in this shape.
  ## As a result, this shape becomes null.

proc location*(this: TopoDS_Shape): TopLoc_Location  {.importcpp: "Location".}
  ## Returns the shape local coordinate system.

proc location*(this: var TopoDS_Shape, theLoc: TopLoc_Location)  {.importcpp: "Location".}
  ## Sets the shape local coordinate system.

proc located*(this: TopoDS_Shape, theLoc: TopLoc_Location): TopoDS_Shape  {.importcpp: "Located".}
  ## Returns a shape similar to <me> with the local coordinate system set
  ## to <Loc>.

proc orientation*(this: TopoDS_Shape): TopAbs_Orientation  {.importcpp: "Orientation".}
  ## Returns the shape orientation.

proc orientation*(this: var TopoDS_Shape, theOrient: TopAbs_Orientation)  {.importcpp: "Orientation".}
  ## Sets the shape orientation.

proc oriented*(this: TopoDS_Shape, theOrient: TopAbs_Orientation): TopoDS_Shape  {.importcpp: "Oriented".}
  ## Returns a shape similar to <me> with the orientation set to <Or>.

proc tShape*(this: TopoDS_Shape): Handle[TopoDS_TShape]  {.importcpp: "TShape".}
  ## Returns a handle to the actual shape implementation.

proc shapeType*(this: TopoDS_Shape): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
  ## Returns the value of the TopAbs_ShapeEnum enumeration that corresponds
  ## to this shape, for example VERTEX, EDGE, and so on. Exceptions
  ## Standard_NullObject if this shape is null.

proc free*(this: TopoDS_Shape): bool  {.importcpp: "Free".}
  ## Returns the free flag.

proc free*(this: var TopoDS_Shape, theIsFree: bool)  {.importcpp: "Free".}
  ## Sets the free flag.

proc locked*(this: TopoDS_Shape): bool  {.importcpp: "Locked".}
  ## Returns the locked flag.

proc locked*(this: var TopoDS_Shape, theIsLocked: bool)  {.importcpp: "Locked".}
  ## Sets the locked flag.

proc modified*(this: TopoDS_Shape): bool  {.importcpp: "Modified".}
  ## Returns the modification flag.

proc modified*(this: var TopoDS_Shape, theIsModified: bool)  {.importcpp: "Modified".}
  ## Sets the modification flag.

proc checked*(this: TopoDS_Shape): bool  {.importcpp: "Checked".}
  ## Returns the checked flag.

proc checked*(this: var TopoDS_Shape, theIsChecked: bool)  {.importcpp: "Checked".}
  ## Sets the checked flag.

proc orientable*(this: TopoDS_Shape): bool  {.importcpp: "Orientable".}
  ## Returns the orientability flag.

proc orientable*(this: var TopoDS_Shape, theIsOrientable: bool)  {.importcpp: "Orientable".}
  ## Sets the orientability flag.

proc closed*(this: TopoDS_Shape): bool  {.importcpp: "Closed".}
  ## Returns the closedness flag.

proc closed*(this: var TopoDS_Shape, theIsClosed: bool)  {.importcpp: "Closed".}
  ## Sets the closedness flag.

proc infinite*(this: TopoDS_Shape): bool  {.importcpp: "Infinite".}
  ## Returns the infinity flag.

proc infinite*(this: var TopoDS_Shape, theIsInfinite: bool)  {.importcpp: "Infinite".}
  ## Sets the infinity flag.

proc convex*(this: TopoDS_Shape): bool  {.importcpp: "Convex".}
  ## Returns the convexness flag.

proc convex*(this: var TopoDS_Shape, theIsConvex: bool)  {.importcpp: "Convex".}
  ## Sets the convexness flag.

proc move*(this: var TopoDS_Shape, thePosition: TopLoc_Location)  {.importcpp: "Move".}
  ## Multiplies the Shape location by thePosition.

proc moved*(this: TopoDS_Shape, thePosition: TopLoc_Location): TopoDS_Shape  {.importcpp: "Moved".}
  ## Returns a shape similar to <me> with a location multiplied by
  ## thePosition.

proc reverse*(this: var TopoDS_Shape)  {.importcpp: "Reverse".}
  ## Reverses the orientation, using the Reverse method from the TopAbs
  ## package.

proc reversed*(this: TopoDS_Shape): TopoDS_Shape  {.importcpp: "Reversed".}
  ## Returns a shape similar to <me> with the orientation reversed, using
  ## the Reverse method from the TopAbs package.

proc complement*(this: var TopoDS_Shape)  {.importcpp: "Complement".}
  ## Complements the orientation, using the Complement method from the
  ## TopAbs package.

proc complemented*(this: TopoDS_Shape): TopoDS_Shape  {.importcpp: "Complemented".}
  ## Returns a shape similar to <me> with the orientation complemented,
  ## using the Complement method from the TopAbs package.

proc compose*(this: var TopoDS_Shape, theOrient: TopAbs_Orientation)  {.importcpp: "Compose".}
  ## Updates the Shape Orientation by composition with theOrient, using the
  ## Compose method from the TopAbs package.

proc composed*(this: TopoDS_Shape, theOrient: TopAbs_Orientation): TopoDS_Shape  {.importcpp: "Composed".}
  ## Returns a shape similar to <me> with the orientation composed with
  ## theOrient, using the Compose method from the TopAbs package.

proc nbChildren*(this: TopoDS_Shape): cint  {.importcpp: "NbChildren".}
  ## Returns the number of direct sub-shapes (children).

proc isPartner*(this: TopoDS_Shape, theOther: TopoDS_Shape): bool  {.importcpp: "IsPartner".}
  ## Returns True if two shapes are partners, i.e. if they share the same
  ## TShape. Locations and Orientations may differ.

proc isSame*(this: TopoDS_Shape, theOther: TopoDS_Shape): bool  {.importcpp: "IsSame".}
  ## Returns True if two shapes are same, i.e. if they share the same
  ## TShape with the same Locations. Orientations may differ.

proc isEqual*(this: TopoDS_Shape, theOther: TopoDS_Shape): bool  {.importcpp: "IsEqual".}
  ## Returns True if two shapes are equal, i.e. if they share the same
  ## TShape with the same Locations and Orientations.

proc `==`*(this: TopoDS_Shape, theOther: TopoDS_Shape): bool  {.importcpp: "# == #".}

proc isNotEqual*(this: TopoDS_Shape, theOther: TopoDS_Shape): bool  {.importcpp: "IsNotEqual".}
  ## Negation of the IsEqual method.

proc `!=`*(this: TopoDS_Shape, theOther: TopoDS_Shape): bool  {.importcpp: "# != #".}

proc hashCode*(this: TopoDS_Shape, theUpperBound: cint): cint  {.importcpp: "HashCode".}
  ## Returns a hashed value denoting <me>. This value is in the range [1,
  ## theUpperBound]. It is computed from the TShape and the Location. The
  ## Orientation is not used.

proc emptyCopy*(this: var TopoDS_Shape)  {.importcpp: "EmptyCopy".}
  ## Replace <me> by a new Shape with the same Orientation and Location and
  ## a new TShape with the same geometry and no sub-shapes.

proc emptyCopied*(this: TopoDS_Shape): TopoDS_Shape  {.importcpp: "EmptyCopied".}
  ## Returns a new Shape with the same Orientation and Location and a new
  ## TShape with the same geometry and no sub-shapes.

proc tShape*(this: var TopoDS_Shape, theTShape: Handle[TopoDS_TShape])  {.importcpp: "TShape".}

proc dumpJson*(this: TopoDS_Shape, theOStream: var Standard_OStream, theDepth: cint)  {.importcpp: "DumpJson".}
  ## Dumps the content of me into the stream

{.pop.} # header: "TopoDS_Shape.hxx
