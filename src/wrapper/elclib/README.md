# About ElCLib (Elementary Curves Library)
The [package ElCLib](https://dev.opencascade.org/doc/refman/html/class_el_c_lib.html) is part of the toolkit [TKMath](https://dev.opencascade.org/doc/refman/html/toolkit_tkmath.html).

-copied-

Provides functions for basic geometric computations on elementary curves such as conics and lines in 2D and 3D space. This includes:

- calculation of a point or derived vector on a 2D or 3D curve where:
  - the curve is provided by the `gp` package, or defined in reference form (as in the gp package), and
  - the point is defined by a parameter,
- evaluation of the parameter corresponding to a point on a 2D or 3D curve from gp,

- various elementary computations which allow you to position parameterized values within the period of a curve. Notes:

If the curves provided by the gp package are not explicitly parameterized, they still have an implicit parameterization, analogous to that which they infer for the equivalent Geom or Geom2d curves.

----