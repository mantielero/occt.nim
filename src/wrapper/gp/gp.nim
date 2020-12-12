{.passL: "-lTKBO -lTKSTEP -lTKPrim -lTKSTEPAttr -lTKSTEP209 -lTKSTEPBase -lTKXSBase -lTKShHealing -lTKTopAlgo -lTKGeomAlgo -lTKBRep -lTKGeomBase -lTKG3d -lTKG2d -lTKMath -lTKernel", passC:"-I/usr/include/opencascade" .}

type
  gp_Trsf2d* {.header: "gp_Trsf2d.hxx", importcpp: "gp_Trsf2d", byref.} = object
  ## Defines a non-persistent transformation in 2D space. The following
  ## transformations are implemented : . Translation, Rotation, Scale .
  ## Symmetry with respect to a point and a line. Complex transformations
  ## can be obtained by combining the previous elementary transformations
  ## using the method Multiply. The transformations can be represented as
  ## follow :

  gp_GTrsf2d* {.header: "gp_GTrsf2d.hxx", importcpp: "gp_GTrsf2d", byref.} = object
  ## Defines a non persistent transformation in 2D space. This
  ## transformation is a general transformation. It can be a Trsf2d from
  ## package gp, an affinity, or you can define your own transformation
  ## giving the corresponding matrix of transformation.

  Handle_gp_VectorWithNullMagnitude* {.header: "gp_VectorWithNullMagnitude.hxx", importcpp: "Handle_gp_VectorWithNullMagnitude".} = Handle[gp_VectorWithNullMagnitude]
  #base_type* {.header: "gp_VectorWithNullMagnitude.hxx", importcpp: "base_type".} = Standard_DomainError
  gp_VectorWithNullMagnitude* {.header: "gp_VectorWithNullMagnitude.hxx", importcpp: "gp_VectorWithNullMagnitude", byref.} = object

  gp_Dir2d* {.header: "gp_Dir2d.hxx", importcpp: "gp_Dir2d", byref.} = object
  ## Describes a unit vector in the plane (2D space). This unit vector is
  ## also called "Direction". See Also gce_MakeDir2d which provides
  ## functions for more complex unit vector constructions Geom2d_Direction
  ## which provides additional functions for constructing unit vectors and
  ## works, in particular, with the parametric equations of unit vectors

  gp_Vec2d* {.header: "gp_Vec2d.hxx", importcpp: "gp_Vec2d", byref.} = object
  ## Defines a non-persistent vector in 2D space.

  gp_Cone* {.header: "gp_Cone.hxx", importcpp: "gp_Cone", byref.} = object
  ## Defines an infinite conical surface. A cone is defined by its half-
  ## angle (can be negative) at the apex and positioned in space with a
  ## coordinate system (a gp_Ax3 object) and a "reference radius" where: -
  ## the "main Axis" of the coordinate system is the axis of revolution of
  ## the cone, - the plane defined by the origin, the "X Direction" and the
  ## "Y Direction" of the coordinate system is the reference plane of the
  ## cone; the intersection of the cone with this reference plane is a
  ## circle of radius equal to the reference radius, if the half-angle is
  ## positive, the apex of the cone is on the negative side of the "main
  ## Axis" of the coordinate system. If the half-angle is negative, the
  ## apex is on the positive side. This coordinate system is the "local
  ## coordinate system" of the cone. Note: when a gp_Cone cone is converted
  ## into a Geom_ConicalSurface cone, some implicit properties of its local
  ## coordinate system are used explicitly: - its origin, "X Direction", "Y
  ## Direction" and "main Direction" are used directly to define the
  ## parametric directions on the cone and the origin of the parameters, -
  ## its implicit orientation (right-handed or left-handed) gives the
  ## orientation (direct or indirect) of the Geom_ConicalSurface cone. See
  ## Also gce_MakeCone which provides functions for more complex cone
  ## constructions Geom_ConicalSurface which provides additional functions
  ## for constructing cones and works, in particular, with the parametric
  ## equations of cones gp_Ax3

  gp_Ax2* {.header: "gp_Ax2.hxx", importcpp: "gp_Ax2", byref.} = object
  ## Describes a right-handed coordinate system in 3D space. A coordinate
  ## system is defined by: - its origin (also referred to as its "Location
  ## point"), and - three orthogonal unit vectors, termed respectively the
  ## "X Direction", the "Y Direction" and the "Direction" (also referred to
  ## as the "main Direction"). The "Direction" of the coordinate system is
  ## called its "main Direction" because whenever this unit vector is
  ## modified, the "X Direction" and the "Y Direction" are recomputed.
  ## However, when we modify either the "X Direction" or the "Y Direction",
  ## "Direction" is not modified. The "main Direction" is also the "Z
  ## Direction". Since an Ax2 coordinate system is right-handed, its "main
  ## Direction" is always equal to the cross product of its "X Direction"
  ## and "Y Direction". (To define a left-handed coordinate system, use
  ## gp_Ax3.) A coordinate system is used: - to describe geometric
  ## entities, in particular to position them. The local coordinate system
  ## of a geometric entity serves the same purpose as the STEP function
  ## "axis placement two axes", or - to define geometric transformations.
  ## Note: we refer to the "X Axis", "Y Axis" and "Z Axis", respectively,
  ## as to axes having: - the origin of the coordinate system as their
  ## origin, and - the unit vectors "X Direction", "Y Direction" and "main
  ## Direction", respectively, as their unit vectors. The "Z Axis" is also
  ## the "main Axis".

  gp_Elips2d* {.header: "gp_Elips2d.hxx", importcpp: "gp_Elips2d", byref.} = object
  ## Describes an ellipse in the plane (2D space). An ellipse is defined by
  ## its major and minor radii and positioned in the plane with a
  ## coordinate system (a gp_Ax22d object) as follows: - the origin of the
  ## coordinate system is the center of the ellipse, - its "X Direction"
  ## defines the major axis of the ellipse, and - its "Y Direction" defines
  ## the minor axis of the ellipse. This coordinate system is the "local
  ## coordinate system" of the ellipse. Its orientation (direct or
  ## indirect) gives an implicit orientation to the ellipse. In this
  ## coordinate system, the equation of the ellipse is: X*X /
  ## (MajorRadius**2) + Y*Y / (MinorRadius**2) = 1.0 See Also
  ## gce_MakeElips2d which provides functions for more complex ellipse
  ## constructions Geom2d_Ellipse which provides additional functions for
  ## constructing ellipses and works, in particular, with the parametric
  ## equations of ellipses

  gp_Pnt2d* {.header: "gp_Pnt2d.hxx", importcpp: "gp_Pnt2d", byref.} = object
  ## Defines a non-persistent 2D cartesian point.

  gp_Hypr* {.header: "gp_Hypr.hxx", importcpp: "gp_Hypr", byref.} = object
  ## Describes a branch of a hyperbola in 3D space. A hyperbola is defined
  ## by its major and minor radii and positioned in space with a coordinate
  ## system (a gp_Ax2 object) of which: - the origin is the center of the
  ## hyperbola, - the "X Direction" defines the major axis of the
  ## hyperbola, and - the "Y Direction" defines the minor axis of the
  ## hyperbola. The origin, "X Direction" and "Y Direction" of this
  ## coordinate system together define the plane of the hyperbola. This
  ## coordinate system is the "local coordinate system" of the hyperbola.
  ## In this coordinate system, the equation of the hyperbola is:
  ## X*X/(MajorRadius**2)-Y*Y/(MinorRadius**2) = 1.0 The branch of the
  ## hyperbola described is the one located on the positive side of the
  ## major axis. The "main Direction" of the local coordinate system is a
  ## normal vector to the plane of the hyperbola. This vector gives an
  ## implicit orientation to the hyperbola. We refer to the "main Axis" of
  ## the local coordinate system as the "Axis" of the hyperbola. The
  ## following schema shows the plane of the hyperbola, and in it, the
  ## respective positions of the three branches of hyperbolas constructed
  ## with the functions OtherBranch, ConjugateBranch1, and
  ## ConjugateBranch2:

  gp_Circ2d* {.header: "gp_Circ2d.hxx", importcpp: "gp_Circ2d", byref.} = object
  ## Describes a circle in the plane (2D space). A circle is defined by its
  ## radius and positioned in the plane with a coordinate system (a
  ## gp_Ax22d object) as follows: - the origin of the coordinate system is
  ## the center of the circle, and - the orientation (direct or indirect)
  ## of the coordinate system gives an implicit orientation to the circle
  ## (and defines its trigonometric sense). This positioning coordinate
  ## system is the "local coordinate system" of the circle. Note: when a
  ## gp_Circ2d circle is converted into a Geom2d_Circle circle, some
  ## implicit properties of the circle are used explicitly: - the implicit
  ## orientation corresponds to the direction in which parameter values
  ## increase, - the starting point for parameterization is that of the "X
  ## Axis" of the local coordinate system (i.e. the "X Axis" of the
  ## circle). See Also GccAna and Geom2dGcc packages which provide
  ## functions for constructing circles defined by geometric constraints
  ## gce_MakeCirc2d which provides functions for more complex circle
  ## constructions Geom2d_Circle which provides additional functions for
  ## constructing circles and works, with the parametric equations of
  ## circles in particular gp_Ax22d

  gp_Quaternion* {.header: "gp_Quaternion.hxx", importcpp: "gp_Quaternion", byref.} = object
  ## Represents operation of rotation in 3d space as queternion and
  ## implements operations with rotations basing on quaternion mathematics.

  gp_Pln* {.header: "gp_Pln.hxx", importcpp: "gp_Pln", byref.} = object
  ## Describes a plane. A plane is positioned in space with a coordinate
  ## system (a gp_Ax3 object), such that the plane is defined by the
  ## origin, "X Direction" and "Y Direction" of this coordinate system,
  ## which is the "local coordinate system" of the plane. The "main
  ## Direction" of the coordinate system is a vector normal to the plane.
  ## It gives the plane an implicit orientation such that the plane is said
  ## to be "direct", if the coordinate system is right-handed, or
  ## "indirect" in the other case. Note: when a gp_Pln plane is converted
  ## into a Geom_Plane plane, some implicit properties of its local
  ## coordinate system are used explicitly: - its origin defines the origin
  ## of the two parameters of the planar surface, - its implicit
  ## orientation is also that of the Geom_Plane. See Also gce_MakePln which
  ## provides functions for more complex plane constructions Geom_Plane
  ## which provides additional functions for constructing planes and works,
  ## in particular, with the parametric equations of planes

  gp_Pnt* {.header: "gp_Pnt.hxx", importcpp: "gp_Pnt", byref.} = object
  ## Defines a 3D cartesian point.

  gp_Ax2d* {.header: "gp_Ax2d.hxx", importcpp: "gp_Ax2d", byref.} = object
  ## Describes an axis in the plane (2D space). An axis is defined by: -
  ## its origin (also referred to as its "Location point"), and - its unit
  ## vector (referred to as its "Direction"). An axis implicitly defines a
  ## direct, right-handed coordinate system in 2D space by: - its origin, -
  ## its "Direction" (giving the "X Direction" of the coordinate system),
  ## and - the unit vector normal to "Direction" (positive angle measured
  ## in the trigonometric sense). An axis is used: - to describe 2D
  ## geometric entities (for example, the axis which defines angular
  ## coordinates on a circle). It serves for the same purpose as the STEP
  ## function "axis placement one axis", or - to define geometric
  ## transformations (axis of symmetry, axis of rotation, and so on). Note:
  ## to define a left-handed 2D coordinate system, use gp_Ax22d.

  gp_Circ* {.header: "gp_Circ.hxx", importcpp: "gp_Circ", byref.} = object
  ## Describes a circle in 3D space. A circle is defined by its radius and
  ## positioned in space with a coordinate system (a gp_Ax2 object) as
  ## follows: - the origin of the coordinate system is the center of the
  ## circle, and - the origin, "X Direction" and "Y Direction" of the
  ## coordinate system define the plane of the circle. This positioning
  ## coordinate system is the "local coordinate system" of the circle. Its
  ## "main Direction" gives the normal vector to the plane of the circle.
  ## The "main Axis" of the coordinate system is referred to as the "Axis"
  ## of the circle. Note: when a gp_Circ circle is converted into a
  ## Geom_Circle circle, some implicit properties of the circle are used
  ## explicitly: - the "main Direction" of the local coordinate system
  ## gives an implicit orientation to the circle (and defines its
  ## trigonometric sense), - this orientation corresponds to the direction
  ## in which parameter values increase, - the starting point for
  ## parameterization is that of the "X Axis" of the local coordinate
  ## system (i.e. the "X Axis" of the circle). See Also gce_MakeCirc which
  ## provides functions for more complex circle constructions Geom_Circle
  ## which provides additional functions for constructing circles and
  ## works, in particular, with the parametric equations of circles

  gp_Hypr2d* {.header: "gp_Hypr2d.hxx", importcpp: "gp_Hypr2d", byref.} = object
  ## Describes a branch of a hyperbola in the plane (2D space). A hyperbola
  ## is defined by its major and minor radii, and positioned in the plane
  ## with a coordinate system (a gp_Ax22d object) of which: - the origin is
  ## the center of the hyperbola, - the "X Direction" defines the major
  ## axis of the hyperbola, and - the "Y Direction" defines the minor axis
  ## of the hyperbola. This coordinate system is the "local coordinate
  ## system" of the hyperbola. The orientation of this coordinate system
  ## (direct or indirect) gives an implicit orientation to the hyperbola.
  ## In this coordinate system, the equation of the hyperbola is:
  ## X*X/(MajorRadius**2)-Y*Y/(MinorRadius**2) = 1.0 The branch of the
  ## hyperbola described is the one located on the positive side of the
  ## major axis. The following schema shows the plane of the hyperbola, and
  ## in it, the respective positions of the three branches of hyperbolas
  ## constructed with the functions OtherBranch, ConjugateBranch1, and
  ## ConjugateBranch2: ^YAxis | FirstConjugateBranch | Other | Main
  ## --------------------- C ------------------------------>XAxis Branch |
  ## Branch | | SecondConjugateBranch |

  gp_Lin* {.header: "gp_Lin.hxx", importcpp: "gp_Lin", byref.} = object
  ## Describes a line in 3D space. A line is positioned in space with an
  ## axis (a gp_Ax1 object) which gives it an origin and a unit vector. A
  ## line and an axis are similar objects, thus, we can convert one into
  ## the other. A line provides direct access to the majority of the edit
  ## and query functions available on its positioning axis. In addition,
  ## however, a line has specific functions for computing distances and
  ## positions. See Also gce_MakeLin which provides functions for more
  ## complex line constructions Geom_Line which provides additional
  ## functions for constructing lines and works, in particular, with the
  ## parametric equations of lines

  gp_Sphere* {.header: "gp_Sphere.hxx", importcpp: "gp_Sphere", byref.} = object
  ## Describes a sphere. A sphere is defined by its radius and positioned
  ## in space with a coordinate system (a gp_Ax3 object). The origin of the
  ## coordinate system is the center of the sphere. This coordinate system
  ## is the "local coordinate system" of the sphere. Note: when a gp_Sphere
  ## sphere is converted into a Geom_SphericalSurface sphere, some implicit
  ## properties of its local coordinate system are used explicitly: - its
  ## origin, "X Direction", "Y Direction" and "main Direction" are used
  ## directly to define the parametric directions on the sphere and the
  ## origin of the parameters, - its implicit orientation (right-handed or
  ## left-handed) gives the orientation (direct, indirect) to the
  ## Geom_SphericalSurface sphere. See Also gce_MakeSphere which provides
  ## functions for more complex sphere constructions Geom_SphericalSurface
  ## which provides additional functions for constructing spheres and
  ## works, in particular, with the parametric equations of spheres.

  gp_Parab2d* {.header: "gp_Parab2d.hxx", importcpp: "gp_Parab2d", byref.} = object
  ## Describes a parabola in the plane (2D space). A parabola is defined by
  ## its focal length (that is, the distance between its focus and apex)
  ## and positioned in the plane with a coordinate system (a gp_Ax22d
  ## object) where: - the origin of the coordinate system is on the apex of
  ## the parabola, and - the "X Axis" of the coordinate system is the axis
  ## of symmetry; the parabola is on the positive side of this axis. This
  ## coordinate system is the "local coordinate system" of the parabola.
  ## Its orientation (direct or indirect sense) gives an implicit
  ## orientation to the parabola. In this coordinate system, the equation
  ## for the parabola is: Y**2 = (2*P) * X. where P, referred to as the
  ## parameter of the parabola, is the distance between the focus and the
  ## directrix (P is twice the focal length). See Also GCE2d_MakeParab2d
  ## which provides functions for more complex parabola constructions
  ## Geom2d_Parabola which provides additional functions for constructing
  ## parabolas and works, in particular, with the parametric equations of
  ## parabolas

  gp_Elips* {.header: "gp_Elips.hxx", importcpp: "gp_Elips", byref.} = object
  ## Describes an ellipse in 3D space. An ellipse is defined by its major
  ## and minor radii and positioned in space with a coordinate system (a
  ## gp_Ax2 object) as follows: - the origin of the coordinate system is
  ## the center of the ellipse, - its "X Direction" defines the major axis
  ## of the ellipse, and - its "Y Direction" defines the minor axis of the
  ## ellipse. Together, the origin, "X Direction" and "Y Direction" of this
  ## coordinate system define the plane of the ellipse. This coordinate
  ## system is the "local coordinate system" of the ellipse. In this
  ## coordinate system, the equation of the ellipse is: X*X /
  ## (MajorRadius**2) + Y*Y / (MinorRadius**2) = 1.0 The "main Direction"
  ## of the local coordinate system gives the normal vector to the plane of
  ## the ellipse. This vector gives an implicit orientation to the ellipse
  ## (definition of the trigonometric sense). We refer to the "main Axis"
  ## of the local coordinate system as the "Axis" of the ellipse. See Also
  ## gce_MakeElips which provides functions for more complex ellipse
  ## constructions Geom_Ellipse which provides additional functions for
  ## constructing ellipses and works, in particular, with the parametric
  ## equations of ellipses

  gp_QuaternionNLerp* {.header: "gp_QuaternionNLerp.hxx", importcpp: "gp_QuaternionNLerp", byref.} = object
  ## Class perform linear interpolation (approximate rotation
  ## interpolation), result quaternion nonunit, its length lay between.
  ## sqrt(2)/2 and 1.0

  gp_Cylinder* {.header: "gp_Cylinder.hxx", importcpp: "gp_Cylinder", byref.} = object
  ## Describes an infinite cylindrical surface. A cylinder is defined by
  ## its radius and positioned in space with a coordinate system (a gp_Ax3
  ## object), the "main Axis" of which is the axis of the cylinder. This
  ## coordinate system is the "local coordinate system" of the cylinder.
  ## Note: when a gp_Cylinder cylinder is converted into a
  ## Geom_CylindricalSurface cylinder, some implicit properties of its
  ## local coordinate system are used explicitly: - its origin, "X
  ## Direction", "Y Direction" and "main Direction" are used directly to
  ## define the parametric directions on the cylinder and the origin of the
  ## parameters, - its implicit orientation (right-handed or left-handed)
  ## gives an orientation (direct or indirect) to the
  ## Geom_CylindricalSurface cylinder. See Also gce_MakeCylinder which
  ## provides functions for more complex cylinder constructions
  ## Geom_CylindricalSurface which provides additional functions for
  ## constructing cylinders and works, in particular, with the parametric
  ## equations of cylinders gp_Ax3

  gp_QuaternionSLerp* {.header: "gp_QuaternionSLerp.hxx", importcpp: "gp_QuaternionSLerp", byref.} = object
  ## Perform Spherical Linear Interpolation of the quaternions, return unit
  ## length quaternion.

  gp_Ax3* {.header: "gp_Ax3.hxx", importcpp: "gp_Ax3", byref.} = object
  ## Describes a coordinate system in 3D space. Unlike a gp_Ax2 coordinate
  ## system, a gp_Ax3 can be right-handed ("direct sense") or left-handed
  ## ("indirect sense"). A coordinate system is defined by: - its origin
  ## (also referred to as its "Location point"), and - three orthogonal
  ## unit vectors, termed the "X Direction", the "Y Direction" and the
  ## "Direction" (also referred to as the "main Direction"). The
  ## "Direction" of the coordinate system is called its "main Direction"
  ## because whenever this unit vector is modified, the "X Direction" and
  ## the "Y Direction" are recomputed. However, when we modify either the
  ## "X Direction" or the "Y Direction", "Direction" is not modified.
  ## "Direction" is also the "Z Direction". The "main Direction" is always
  ## parallel to the cross product of its "X Direction" and "Y Direction".
  ## If the coordinate system is right-handed, it satisfies the equation:
  ## "main Direction" = "X Direction" ^ "Y Direction" and if it is left-
  ## handed, it satisfies the equation: "main Direction" = -"X Direction" ^
  ## "Y Direction" A coordinate system is used: - to describe geometric
  ## entities, in particular to position them. The local coordinate system
  ## of a geometric entity serves the same purpose as the STEP function
  ## "axis placement three axes", or - to define geometric transformations.
  ## Note: - We refer to the "X Axis", "Y Axis" and "Z Axis", respectively,
  ## as the axes having: - the origin of the coordinate system as their
  ## origin, and - the unit vectors "X Direction", "Y Direction" and "main
  ## Direction", respectively, as their unit vectors. - The "Z Axis" is
  ## also the "main Axis". - gp_Ax2 is used to define a coordinate system
  ## that must be always right-handed.

  gp_Mat2d* {.header: "gp_Mat2d.hxx", importcpp: "gp_Mat2d", byref.} = object
  ## Describes a two column, two row matrix. This sort of object is used in
  ## various vectorial or matrix computations.

  gp_Ax22d* {.header: "gp_Ax22d.hxx", importcpp: "gp_Ax22d", byref.} = object
  ## Describes a coordinate system in a plane (2D space). A coordinate
  ## system is defined by: - its origin (also referred to as its "Location
  ## point"), and - two orthogonal unit vectors, respectively, called the
  ## "X Direction" and the "Y Direction". A gp_Ax22d may be right-handed
  ## ("direct sense") or left-handed ("inverse" or "indirect sense"). You
  ## use a gp_Ax22d to: - describe 2D geometric entities, in particular to
  ## position them. The local coordinate system of a geometric entity
  ## serves for the same purpose as the STEP function "axis placement two
  ## axes", or - define geometric transformations. Note: we refer to the "X
  ## Axis" and "Y Axis" as the axes having: - the origin of the coordinate
  ## system as their origin, and - the unit vectors "X Direction" and "Y
  ## Direction", respectively, as their unit vectors.

  gp_Ax1* {.header: "gp_Ax1.hxx", importcpp: "gp_Ax1", byref.} = object
  ## Describes an axis in 3D space. An axis is defined by: - its origin
  ## (also referred to as its "Location point"), and - its unit vector
  ## (referred to as its "Direction" or "main Direction"). An axis is used:
  ## - to describe 3D geometric entities (for example, the axis of a
  ## revolution entity). It serves the same purpose as the STEP function
  ## "axis placement one axis", or - to define geometric transformations
  ## (axis of symmetry, axis of rotation, and so on). For example, this
  ## entity can be used to locate a geometric entity or to define a
  ## symmetry axis.

  gp_Lin2d* {.header: "gp_Lin2d.hxx", importcpp: "gp_Lin2d", byref.} = object
  ## Describes a line in 2D space. A line is positioned in the plane with
  ## an axis (a gp_Ax2d object) which gives the line its origin and unit
  ## vector. A line and an axis are similar objects, thus, we can convert
  ## one into the other. A line provides direct access to the majority of
  ## the edit and query functions available on its positioning axis. In
  ## addition, however, a line has specific functions for computing
  ## distances and positions. See Also GccAna and Geom2dGcc packages which
  ## provide functions for constructing lines defined by geometric
  ## constraints gce_MakeLin2d which provides functions for more complex
  ## line constructions Geom2d_Line which provides additional functions for
  ## constructing lines and works, in particular, with the parametric
  ## equations of lines

  gp_Torus* {.header: "gp_Torus.hxx", importcpp: "gp_Torus", byref.} = object
  ## Describes a torus. A torus is defined by its major and minor radii and
  ## positioned in space with a coordinate system (a gp_Ax3 object) as
  ## follows: - The origin of the coordinate system is the center of the
  ## torus; - The surface is obtained by rotating a circle of radius equal
  ## to the minor radius of the torus about the "main Direction" of the
  ## coordinate system. This circle is located in the plane defined by the
  ## origin, the "X Direction" and the "main Direction" of the coordinate
  ## system. It is centered on the "X Axis" of this coordinate system, and
  ## located at a distance, from the origin of this coordinate system,
  ## equal to the major radius of the torus; - The "X Direction" and "Y
  ## Direction" define the reference plane of the torus. The coordinate
  ## system described above is the "local coordinate system" of the torus.
  ## Note: when a gp_Torus torus is converted into a Geom_ToroidalSurface
  ## torus, some implicit properties of its local coordinate system are
  ## used explicitly: - its origin, "X Direction", "Y Direction" and "main
  ## Direction" are used directly to define the parametric directions on
  ## the torus and the origin of the parameters, - its implicit orientation
  ## (right-handed or left-handed) gives the orientation (direct, indirect)
  ## to the Geom_ToroidalSurface torus. See Also gce_MakeTorus which
  ## provides functions for more complex torus constructions
  ## Geom_ToroidalSurface which provides additional functions for
  ## constructing tori and works, in particular, with the parametric
  ## equations of tori.

  gp_Trsf* {.header: "gp_Trsf.hxx", importcpp: "gp_Trsf", byref.} = object
  ## Defines a non-persistent transformation in 3D space. The following
  ## transformations are implemented : . Translation, Rotation, Scale .
  ## Symmetry with respect to a point, a line, a plane. Complex
  ## transformations can be obtained by combining the previous elementary
  ## transformations using the method Multiply. The transformations can be
  ## represented as follow :

  gp_GTrsf* {.header: "gp_GTrsf.hxx", importcpp: "gp_GTrsf", byref.} = object
  ## Defines a non-persistent transformation in 3D space. This
  ## transformation is a general transformation. It can be a Trsf from gp,
  ## an affinity, or you can define your own transformation giving the
  ## matrix of transformation.

  gp_Mat* {.header: "gp_Mat.hxx", importcpp: "gp_Mat", byref.} = object
  ## Describes a three column, three row matrix. This sort of object is
  ## used in various vectorial or matrix computations.

  gp_XY* {.header: "gp_XY.hxx", importcpp: "gp_XY", byref.} = object
  ## This class describes a cartesian coordinate entity in 2D space {X,Y}.
  ## This class is non persistent. This entity used for algebraic
  ## calculation. An XY can be transformed with a Trsf2d or a GTrsf2d from
  ## package gp. It is used in vectorial computations or for holding this
  ## type of information in data structures.

  gp_TrsfNLerp* {.header: "gp_TrsfNLerp.hxx", importcpp: "gp_TrsfNLerp".} [K] = object #NCollection_Lerp#<gp_Trsf>

  NCollection_Lerp* {.header: "gp_TrsfNLerp.hxx", importcpp: "NCollection_Lerp", byref.} = object
  ## Linear interpolation tool for transformation defined by gp_Trsf.

  gp_Vec* {.header: "gp_Vec.hxx", importcpp: "gp_Vec", byref.} = object
  ## Defines a non-persistent vector in 3D space.

  gp_Parab* {.header: "gp_Parab.hxx", importcpp: "gp_Parab", byref.} = object
  ## Describes a parabola in 3D space. A parabola is defined by its focal
  ## length (that is, the distance between its focus and apex) and
  ## positioned in space with a coordinate system (a gp_Ax2 object) where:
  ## - the origin of the coordinate system is on the apex of the parabola,
  ## - the "X Axis" of the coordinate system is the axis of symmetry; the
  ## parabola is on the positive side of this axis, and - the origin, "X
  ## Direction" and "Y Direction" of the coordinate system define the plane
  ## of the parabola. The equation of the parabola in this coordinate
  ## system, which is the "local coordinate system" of the parabola, is:
  ## Y**2 = (2*P) * X. where P, referred to as the parameter of the
  ## parabola, is the distance between the focus and the directrix (P is
  ## twice the focal length). The "main Direction" of the local coordinate
  ## system gives the normal vector to the plane of the parabola. See Also
  ## gce_MakeParab which provides functions for more complex parabola
  ## constructions Geom_Parabola which provides additional functions for
  ## constructing parabolas and works, in particular, with the parametric
  ## equations of parabolas

  gp_XYZ* {.header: "gp_XYZ.hxx", importcpp: "gp_XYZ", byref.} = object
  ## This class describes a cartesian coordinate entity in 3D space
  ## {X,Y,Z}. This entity is used for algebraic calculation. This entity
  ## can be transformed with a "Trsf" or a "GTrsf" from package "gp". It is
  ## used in vectorial computations or for holding this type of information
  ## in data structures.

  gp_Dir* {.header: "gp_Dir.hxx", importcpp: "gp_Dir", byref.} = object
  ## Describes a unit vector in 3D space. This unit vector is also called
  ## "Direction". See Also gce_MakeDir which provides functions for more
  ## complex unit vector constructions Geom_Direction which provides
  ## additional functions for constructing unit vectors and works, in
  ## particular, with the parametric equations of unit vectors.

  Handle* {.importcpp: "opencascade::handle", header: "<map>".} [K] = object

  gp_TrsfForm* {.header: "gp_Trsf.hxx", importcpp: "gp_TrsfForm", byref.} = object

include "gp_Pnt.nim"
include "gp_XYZ.nim"
include gp_Ax1
include gp_Vec
#[
include "gp_Trsf2d.nim"
include "gp_GTrsf2d.nim"
include "gp_VectorWithNullMagnitude.nim"
include "gp_Dir2d.nim"
include "gp_Vec2d.nim"
include "gp_Cone.nim"
include "gp_Ax2.nim"
include "gp_Elips2d.nim"
include "gp_Pnt2d.nim"
include "gp_Hypr.nim"
include "gp_Circ2d.nim"
include "gp_Quaternion.nim"
include "gp_Pln.nim"
]#

#[
include "gp_Ax2d.nim"
include "gp_Circ.nim"
include "gp_Hypr2d.nim"
include "gp_Lin.nim"
include "gp_Sphere.nim"
include "gp_Parab2d.nim"
include "gp_Elips.nim"
include "gp_QuaternionNLerp.nim"
include "gp_Cylinder.nim"
include "gp_QuaternionSLerp.nim"
include "gp_Ax3.nim"
include "gp_Mat2d.nim"
include "gp_Ax22d.nim"

include "gp_Lin2d.nim"
include "gp_Torus.nim"
include "gp_Trsf.nim"
include "gp_GTrsf.nim"
include "gp_Mat.nim"
include "gp_EulerSequence.nim"
include "gp_TrsfForm.nim"
include "gp_XY.nim"
include "gp_TrsfNLerp.nim"

include "gp_Parab.nim"

include "gp_Dir.nim"
]#