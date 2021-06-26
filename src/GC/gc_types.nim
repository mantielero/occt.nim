type
  GC_MakeCircle* {.header: "GC_MakeCircle.hxx", importcpp: "GC_MakeCircle", byref.} = object
  ## This class implements the following algorithms used to create Cirlec
  ## from Geom.

  GC_MakeMirror* {.header: "GC_MakeMirror.hxx", importcpp: "GC_MakeMirror", byref.} = object
  ## This class implements elementary construction algorithms for a
  ## symmetrical transformation in 3D space about a point, axis or plane.
  ## The result is a Geom_Transformation transformation. A MakeMirror
  ## object provides a framework for: - defining the construction of the
  ## transformation, - implementing the construction algorithm, and -
  ## consulting the result.

  GC_MakeConicalSurface* {.header: "GC_MakeConicalSurface.hxx", importcpp: "GC_MakeConicalSurface", byref.} = object
  ## This class implements the following algorithms used to create a
  ## ConicalSurface from Geom. * Create a ConicalSurface parallel to
  ## another and passing through a point. * Create a ConicalSurface
  ## parallel to another at a distance <Dist>. * Create a ConicalSurface by
  ## 4 points. * Create a ConicalSurface by its axis and 2 points. * Create
  ## a ConicalSurface by 2 points and 2 radius. The local coordinate system
  ## of the ConicalSurface is defined with an axis placement (see class
  ## ElementarySurface).

  GC_MakeArcOfHyperbola* {.header: "GC_MakeArcOfHyperbola.hxx", importcpp: "GC_MakeArcOfHyperbola", byref.} = object
  ## Implements construction algorithms for an arc of hyperbola in 3D
  ## space. The result is a Geom_TrimmedCurve curve. A MakeArcOfHyperbola
  ## object provides a framework for: - defining the construction of the
  ## arc of hyperbola, - implementing the construction algorithm, and -
  ## consulting the results. In particular, the Value function returns the
  ## constructed arc of hyperbola.

  GC_MakeScale* {.header: "GC_MakeScale.hxx", importcpp: "GC_MakeScale", byref.} = object
  ## This class implements an elementary construction algorithm for a
  ## scaling transformation in 3D space. The result is a
  ## Geom_Transformation transformation (a scaling transformation with the
  ## center point <Point> and the scaling value <Scale>). A MakeScale
  ## object provides a framework for: - defining the construction of the
  ## transformation, - implementing the construction algorithm, and -
  ## consulting the result.

  GC_MakeCylindricalSurface* {.header: "GC_MakeCylindricalSurface.hxx", importcpp: "GC_MakeCylindricalSurface", byref.} = object
  ## This class implements the following algorithms used to create a
  ## CylindricalSurface from Geom. * Create a CylindricalSurface parallel
  ## to another and passing through a point. * Create a CylindricalSurface
  ## parallel to another at a distance <Dist>. * Create a
  ## CylindricalSurface passing through 3 points. * Create a
  ## CylindricalSurface by its axis and radius. * Create a
  ## cylindricalSurface by its circular base. The local coordinate system
  ## of the CylindricalSurface is defined with an axis placement (see class
  ## ElementarySurface).

  GC_MakeSegment* {.header: "GC_MakeSegment.hxx", importcpp: "GC_MakeSegment", byref.} = object
  ## Implements construction algorithms for a line segment in 3D space.
  ## Makes a segment of Line from the 2 points <P1> and <P2>. The result is
  ## a Geom_TrimmedCurve curve. A MakeSegment object provides a framework
  ## for: - defining the construction of the line segment, - implementing
  ## the construction algorithm, and - consulting the results. In
  ## particular, the Value function returns the constructed line segment.

  GC_MakeHyperbola* {.header: "GC_MakeHyperbola.hxx", importcpp: "GC_MakeHyperbola", byref.} = object
  ## This class implements construction algorithms for a hyperbola in 3D
  ## space. The result is a Geom_Hyperbola hyperbola. A MakeHyperbola
  ## object provides a framework for: - defining the construction of the
  ## hyperbola, - implementing the construction algorithm, and - consulting
  ## the results. In particular, the Value function returns the constructed
  ## hyperbola. To define the main branch of an hyperbola. The
  ## parameterization range is ]-infinite,+infinite[ It is possible to get
  ## the other branch and the two conjugate branches of the main branch.

  GC_MakeEllipse* {.header: "GC_MakeEllipse.hxx", importcpp: "GC_MakeEllipse", byref.} = object
  ## This class implements construction algorithms for an ellipse in 3D
  ## space. The result is a Geom_Ellipse ellipse. A MakeEllipse object
  ## provides a framework for: - defining the construction of the ellipse,
  ## - implementing the construction algorithm, and - consulting the
  ## results. In particular, the Value function returns the constructed
  ## ellipse.

  GC_MakeLine* {.header: "GC_MakeLine.hxx", importcpp: "GC_MakeLine", byref.} = object
  ## This class implements the following algorithms used to create a Line
  ## from Geom. * Create a Line parallel to another and passing through a
  ## point. * Create a Line passing through 2 points. A MakeLine object
  ## provides a framework for: - defining the construction of the line, -
  ## implementing the construction algorithm, and - consulting the results.
  ## In particular, the Value function returns the constructed line.

  GC_MakeTrimmedCone* {.header: "GC_MakeTrimmedCone.hxx", importcpp: "GC_MakeTrimmedCone", byref.} = object
  ## Implements construction algorithms for a trimmed cone limited by two
  ## planes orthogonal to its axis. The result is a
  ## Geom_RectangularTrimmedSurface surface. A MakeTrimmedCone provides a
  ## framework for: - defining the construction of the trimmed cone, -
  ## implementing the construction algorithm, and - consulting the results.
  ## In particular, the Value function returns the constructed trimmed
  ## cone.

  GC_MakeRotation* {.header: "GC_MakeRotation.hxx", importcpp: "GC_MakeRotation", byref.} = object
  ## This class implements elementary construction algorithms for a
  ## rotation in 3D space. The result is a Geom_Transformation
  ## transformation. A MakeRotation object provides a framework for: -
  ## defining the construction of the transformation, - implementing the
  ## construction algorithm, and - consulting the result.

  GC_MakeArcOfEllipse* {.header: "GC_MakeArcOfEllipse.hxx", importcpp: "GC_MakeArcOfEllipse", byref.} = object
  ## Implements construction algorithms for an arc of ellipse in 3D space.
  ## The result is a Geom_TrimmedCurve curve. A MakeArcOfEllipse object
  ## provides a framework for: - defining the construction of the arc of
  ## ellipse, - implementing the construction algorithm, and - consulting
  ## the results. In particular, the Value function returns the constructed
  ## arc of ellipse.

  GC_MakeArcOfCircle* {.header: "GC_MakeArcOfCircle.hxx", importcpp: "GC_MakeArcOfCircle", byref.} = object
  ## Implements construction algorithms for an arc of circle in 3D space.
  ## The result is a Geom_TrimmedCurve curve. A MakeArcOfCircle object
  ## provides a framework for: - defining the construction of the arc of
  ## circle, - implementing the construction algorithm, and - consulting
  ## the results. In particular, the Value function returns the constructed
  ## arc of circle.

  GC_MakePlane* {.header: "GC_MakePlane.hxx", importcpp: "GC_MakePlane", byref.} = object
  ## This class implements the following algorithms used to create a Plane
  ## from gp. * Create a Plane parallel to another and passing through a
  ## point. * Create a Plane passing through 3 points. * Create a Plane by
  ## its normal A MakePlane object provides a framework for: - defining the
  ## construction of the plane, - implementing the construction algorithm,
  ## and - consulting the results. In particular, the Value function
  ## returns the constructed plane.

  GC_MakeArcOfParabola* {.header: "GC_MakeArcOfParabola.hxx", importcpp: "GC_MakeArcOfParabola", byref.} = object
  ## Implements construction algorithms for an arc of parabola in 3D space.
  ## The result is a Geom_TrimmedCurve curve. A MakeArcOfParabola object
  ## provides a framework for: - defining the construction of the arc of
  ## parabola, - implementing the construction algorithm, and - consulting
  ## the results. In particular, the Value function returns the constructed
  ## arc of parabola.

  GC_MakeTrimmedCylinder* {.header: "GC_MakeTrimmedCylinder.hxx", importcpp: "GC_MakeTrimmedCylinder", byref.} = object
  ## Implements construction algorithms for a trimmed cylinder limited by
  ## two planes orthogonal to its axis. The result is a
  ## Geom_RectangularTrimmedSurface surface. A MakeTrimmedCylinder provides
  ## a framework for: - defining the construction of the trimmed cylinder,
  ## - implementing the construction algorithm, and - consulting the
  ## results. In particular, the Value function returns the constructed
  ## trimmed cylinder.

  GC_Root* {.header: "GC_Root.hxx", importcpp: "GC_Root", byref.} = object
  ## This class implements the common services for all classes of gce which
  ## report error.

  GC_MakeTranslation* {.header: "GC_MakeTranslation.hxx", importcpp: "GC_MakeTranslation", byref.} = object
  ## This class implements elementary construction algorithms for a
  ## translation in 3D space. The result is a Geom_Transformation
  ## transformation. A MakeTranslation object provides a framework for: -
  ## defining the construction of the transformation, - implementing the
  ## construction algorithm, and - consulting the result.

  #Handle* {.importcpp: "opencascade::handle", header: "<map>".} [K] = object