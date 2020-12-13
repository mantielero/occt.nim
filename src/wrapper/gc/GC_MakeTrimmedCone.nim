{.push header: "GC_MakeTrimmedCone.hxx".}


# Constructors and methods
proc constructor_GC_MakeTrimmedCone*(P1: gp_Pnt, P2: gp_Pnt, P3: gp_Pnt, P4: gp_Pnt): GC_MakeTrimmedCone {.constructor,importcpp: "GC_MakeTrimmedCone(@)".}
  ## Make a RectangularTrimmedSurface <TheCone> from Geom It is trimmed by
  ## P3 and P4. Its axis is <P1P2> and the radius of its base is the
  ## distance between <P3> and <P1P2>. The distance between <P4> and <P1P2>
  ## is the radius of the section passing through <P4>. An error iss raised
  ## if <P1>,<P2>,<P3>,<P4> are colinear or if <P3P4> is perpendicular to
  ## <P1P2> or <P3P4> is colinear to <P1P2>.

proc constructor_GC_MakeTrimmedCone*(P1: gp_Pnt, P2: gp_Pnt, R1: Standard_Real, R2: Standard_Real): GC_MakeTrimmedCone {.constructor,importcpp: "GC_MakeTrimmedCone(@)".}
  ## Make a RectangularTrimmedSurface from Geom <TheCone> from a cone and
  ## trimmed by two points P1 and P2 and the two radius <R1> and <R2> of
  ## the sections passing through <P1> an <P2>. Warning If an error occurs
  ## (that is, when IsDone returns false), the Status function returns: -
  ## gce_ConfusedPoints if points P1 and P2, or P3 and P4, are coincident;
  ## - gce_NullAngle if: - the lines joining P1 to P2 and P3 to P4 are
  ## parallel, or - R1 and R2 are equal (i.e. their difference is less than
  ## gp::Resolution()); - gce_NullRadius if: - the line joining P1 to P2 is
  ## perpendicular to the line joining P3 to P4, or - the points P1, P2, P3
  ## and P4 are collinear; - gce_NegativeRadius if R1 or R2 is negative; or
  ## - gce_NullAxis if points P1 and P2 are coincident (2nd syntax only).

proc ` new`*(this: var GC_MakeTrimmedCone, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeTrimmedCone, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeTrimmedCone, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeTrimmedCone, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeTrimmedCone, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeTrimmedCone, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeTrimmedCone): Handle[Geom_RectangularTrimmedSurface]  {.importcpp: "Value".}
  ## Returns the constructed trimmed cone. StdFail_NotDone if no trimmed
  ## cone is constructed.

{.pop.} # header: "GC_MakeTrimmedCone.hxx
