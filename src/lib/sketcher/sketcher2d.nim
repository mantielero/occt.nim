#[
OpenCascade provides:
- tkg2d/geom2d/geom2d_point: The abstract class Point describes the common behavior of geometric points in 2D space. 
- tkg2d/geom2d/geom2d_cartesianpoint: Describes a point in 2D space  
]#

proc initialPnt*[X,Y: SomeNumber](x:X; y:Y) =
  ## dr
  discard