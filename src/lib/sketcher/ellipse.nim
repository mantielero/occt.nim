import ../../wrapper/occt_wrapper
import common
# https://replicad.xyz/docs/api/#drawellipse
# https://github.com/sgenoud/replicad/blob/11438e7/packages/replicad/src/draw.ts#L307
# drawEllipse(majorRadius, minorRadius): Drawing
# Creates an ellipse, centered in (0,0). Returning a "Drawing"
#[
gp_Elips2d, Geom_Ellipse2d, and gce2d_MakeEllipse are all classes in OpenCASCADE used for representing 2D ellipses. Here are the differences between them:

gp_Elips2d: This class represents a 2D ellipse in the form of its parameters, such as the center, major radius, minor radius, and rotation angle. It is a lightweight class that can be used for simple 2D geometry operations, but it does not provide methods for constructing or manipulating the ellipse.

Geom_Ellipse2d: This class represents a 2D ellipse as a geometric object that can be used for computations such as intersection, projection, and distance calculation. It provides methods for constructing and manipulating the ellipse, such as setting the center, major and minor radii, and rotation angle.

gce2d_MakeEllipse: This class provides a way to construct a Geom_Ellipse2d object by specifying its parameters, such as the center, major and minor radii, and rotation angle. It is a convenience class that simplifies the construction process of a Geom_Ellipse2d object.

In summary, gp_Elips2d is a lightweight class that represents 2D ellipses in terms of their parameters, while Geom_Ellipse2d is a geometric object that can be used for computations involving 2D ellipses. gce2d_MakeEllipse is a convenience class that simplifies the construction of a Geom_Ellipse2d object.
]#

# wrapper/gc/gc_makearcofellipse
# wrapper/gce2d/gce2d_makearcofellipse

# wrapper/gc/gc_makeellipse
# wrapper/gce2d/gce2d_makeellipse

# wrapper/geom2dadaptor/geom2dadaptor_curve
# wrapper/adaptor3d/adaptor3d_curve

# wrapper/geom2d/geom2d_ellipse
# wrapper/geom/geom_ellipse


proc ellipse*[M,N:SomeNumber](major:M; minor:N):TopoDS_Wire =
  if major.float < minor.float:
    raise newException(ValueError, "major axis should be bigger than minor")
  #var axis = ax2d( pnt2d(0.0,0.0), dir2d(1.0,0.0))
  # oX2d()
  #   elips2d( oX2d(), major.cfloat, minor.cfloat )
  var ellipseRef = newGCE2dMakeEllipse(oX2d(), major.cfloat, minor.cfloat).value
  var aWire = newWire()
  aWire &= ellipseRef.edge2d.edge
  buildcurves3d(aWire)
  return aWire
