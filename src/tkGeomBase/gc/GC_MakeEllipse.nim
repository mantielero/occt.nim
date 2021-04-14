{.push header: "GC_MakeEllipse.hxx".}


# Constructors and methods
proc constructor_GC_MakeEllipse*(E: gp_Elips): GC_MakeEllipse {.constructor,importcpp: "GC_MakeEllipse(@)".}
  ## Creates an ellipse from a non persistent ellipse E from package gp by
  ## its conversion.

proc constructor_GC_MakeEllipse*(A2: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble): GC_MakeEllipse {.constructor,importcpp: "GC_MakeEllipse(@)".}
  ## Constructs an ellipse with major and minor radii MajorRadius and
  ## MinorRadius, and located in the plane defined by the "X Axis" and "Y
  ## Axis" of the coordinate system A2, where: - its center is the origin
  ## of A2, and - its major axis is the "X Axis" of A2; Warnings : The
  ## MakeEllipse class does not prevent the construction of an ellipse
  ## where MajorRadius is equal to MinorRadius. If an error occurs (that
  ## is, when IsDone returns false), the Status function returns: -
  ## gce_InvertRadius if MajorRadius is less than MinorRadius; -
  ## gce_NegativeRadius if MinorRadius is less than 0.0; - gce_NullAxis if
  ## the points S1 and Center are coincident; or - gce_InvertAxis if: - the
  ## major radius computed with Center and S1 is less than the minor radius
  ## computed with Center, S1 and S2, or - Center, S1 and S2 are collinear.

proc constructor_GC_MakeEllipse*(S1: gp_Pnt, S2: gp_Pnt, Center: gp_Pnt): GC_MakeEllipse {.constructor,importcpp: "GC_MakeEllipse(@)".}
  ## Constructs an ellipse centered on the point Center, where - the plane
  ## of the ellipse is defined by Center, S1 and S2, - its major axis is
  ## defined by Center and S1, - its major radius is the distance between
  ## Center and S1, and - its minor radius is the distance between S2 and
  ## the major axis.

proc ` new`*(this: var GC_MakeEllipse, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeEllipse, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeEllipse, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeEllipse, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeEllipse, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeEllipse, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeEllipse): Handle[Geom_Ellipse]  {.importcpp: "Value".}
  ## Returns the constructed ellipse. Exceptions StdFail_NotDone if no
  ## ellipse is constructed.

{.pop.} # header: "GC_MakeEllipse.hxx
