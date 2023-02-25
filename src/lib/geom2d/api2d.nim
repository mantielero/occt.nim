# New 2D objects
import math

# Points
type
  Point2dObj* = array[2, float]
  Vector2dObj* = distinct Point2dObj



proc x*(obj:Point2dObj):float =
  obj[0]

proc y*(obj:Point2dObj):float =
  obj[1]

proc `x=`*(obj:var Point2dObj; val:SomeNumber) =
  obj[0] = val.float

proc `y=`*(obj:var Point2dObj; val:SomeNumber) =
  obj[1] = val.float


proc distance*(p1,p2: Point2dObj):float =
  sqrt( (p2.x-p1.x)^2 + (p2.y-p2.y)^2 )

# Vector



