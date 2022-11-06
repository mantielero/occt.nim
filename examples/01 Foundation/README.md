# Introduction
We can find more info about OpenCascade's foundation classes [here](https://old.opencascade.com/doc/occt-7.5.0/overview/html/occt_user_guides__foundation_classes.html).

The toolkits involved [here](https://dev.opencascade.org/doc/refman/html/module_foundationclasses.html):
- [TKernel](https://dev.opencascade.org/doc/refman/html/toolkit_tkernel.html)
- [TKMath](https://dev.opencascade.org/doc/refman/html/toolkit_tkmath.html)


# Data types - Handle
[info](https://old.opencascade.com/doc/occt-7.5.0/overview/html/occt_user_guides__foundation_classes.html#occt_fcug_2_1)
We can use manipulate data by value or by handle.

In C++, you would do:
```c++
Handle(MyClass) anObject = new MyClass();
```

The equivalent in Nim:
```nim
var anObject:Handle[MyClass] = newHandle( cnew MyClass() )
```

## TODO: to simplify the management with Handles.
- creating constructors: `newMyClass`
- simplifying the handles naming: `HMyClass` or `MyClassRef`.


For example, `tkg3g/geom/geom_circle.nim` contains the following constructor:
```nim
proc newGeomCircle*(c: CircObj): GeomCircle {.cdecl, constructor,
                                       importcpp: "Geom_Circle(@)", header: "Geom_Circle.hxx".}
```

We could use:
```nim
proc newCircle*(c: CircObj): Handle[GeomCircle] {.cdecl, constructor,
                                       importcpp: "new Geom_Circle(@)", header: "Geom_Circle.hxx".}
```

As an example, the following would work:
```nim
import occt

var origin = pnt(0,0,0)
var xyzPnt = xyz(0,0,1)
var v = dir(xyzPnt)
var axis = ax2(origin, v)
var c = circ(axis, 5.0)

var cc = newCircle( c )
```

## Dereferencing
Getting access to the object referenced by the handler is done in Nim by means of:
```nim
`*`(myObject)
```

The binding for the `*` operator is: `importcpp: "(* #)"`.

We also have the operator `->` in Nim:
```nim
cc->radius
```

But we could also wrap as follows:
```c++
proc radius*(this: Handle[GeomCircle]): cfloat {.noSideEffect, cdecl, importcpp: "#->Radius()".}
```

By doing so we can use:
```nim
cc.radius
```

Another option would defining things like:
```nim
proc x*(pnt:HandleCartesianPointObj):cfloat =
  `*`(pnt).x
```


# Collections
[Collections, Strings, Quantities and Unit Conversion](https://dev.opencascade.org/doc/overview/html/occt_user_guides__foundation_classes.html#occt_fcug_3)

Collections are the classes that handle dynamically sized aggregates of data. Collection classes are generic and rely on C++ templates.

Collections include a wide range of generic classes such as run-time sized arrays, lists, stacks, queues, sets and hash maps. Collections are implemented in the TCollection and NCollection packages.

# Math
[Math Primitives and Algorithms](https://dev.opencascade.org/doc/overview/html/occt_user_guides__foundation_classes.html#occt_occt_fcug_4)

# Toolkit TKMath
Only depends on TKernel.

## Package: gp (Geometric Processor)
### Points
[gp_Pnt](https://dev.opencascade.org/doc/occt-6.9.1/refman/html/classgp___pnt.html), but `PntObj` in Nim.

```nim
import occt

var pnt1 = pnt(1.3, 2, -4)
assert pnt1.y == 2
pnt1.x = 0
assert pnt1.x == 0
echo pnt1
```

### Vector
[gp_Vec](https://dev.opencascade.org/doc/occt-6.9.1/refman/html/classgp___vec.html)

Defines a non-persistent vector in 3D space.
```nim
import occt
var v1 = vec(1,2,3)

var p1 = pnt(0,0,1)
var p2 = pnt(0,1,1)
var v2 = vec(p1,p2)
```

### Dir
[gp_Dir](https://dev.opencascade.org/doc/occt-6.9.1/refman/html/classgp___dir.html)

Describes a unit vector in 3D space. This unit vector is also called "Direction". 

```nim
import occt

var d1 = dir(0, 0, 1) 
```

### Axis in 3d space 
[gp_Ax1](https://dev.opencascade.org/doc/occt-6.9.1/refman/html/classgp___ax1.html) but in Nim: `Ax1Obj`.

Describes an axis in 3D space. An axis is defined by:
- its origin (also referred to as its "Location point"), and
- its unit vector (referred to as its "Direction" or "main Direction"). 

An axis is used:
- to describe 3D geometric entities (for example, the axis of a revolution entity). It serves the same purpose as the STEP function "axis placement one axis", or
- to define geometric transformations (axis of symmetry, axis of rotation, and so on). For example, this entity can be used to locate a geometric entity or to define a symmetry axis.

```nim
import occt

var axis1 = ax1( pnt(1,1,0), dir(0, 0, 1) )
```

### Right handed coordinate system
[gp_Ax2](https://dev.opencascade.org/doc/occt-6.9.1/refman/html/classgp___ax2.html)
Describes a right-handed coordinate system in 3D space. A coordinate system is defined by:
- its origin (also referred to as its "Location point"), and
- three orthogonal unit vectors, termed respectively the "X Direction", the "Y Direction" and the "Direction" (also referred to as the "main Direction"). The "Direction" of the coordinate system is called its "main Direction" because whenever this unit vector is modified, the "X Direction" and the "Y Direction" are recomputed. However, when we modify either the "X Direction" or the "Y Direction", "Direction" is not modified. The "main Direction" is also the "Z Direction". Since an Ax2 coordinate system is right-handed, its "main Direction" is always equal to the cross product of its "X Direction" and "Y Direction". (To define a left-handed coordinate system, use gp_Ax3.) 

A coordinate system is used:
- to describe geometric entities, in particular to position them. The local coordinate system of a geometric entity serves the same purpose as the STEP function "axis placement two axes", or
- to define geometric transformations. Note: we refer to the "X Axis", "Y Axis" and "Z Axis", respectively, as to axes having:
- the origin of the coordinate system as their origin, and
- the unit vectors "X Direction", "Y Direction" and "main Direction", respectively, as their unit vectors. The "Z Axis" is also the "main Axis".

```nim
import occt

var sr = ax2( pnt(1,1,0), dir(1, 0, 0), dir(0, 1, 0) )
```

### Left handed coordinate system
[gp_Ax3](https://dev.opencascade.org/doc/occt-6.9.1/refman/html/classgp___ax3.html) as `Ax3Obj`.
Describes a coordinate system in 3D space. Unlike a gp_Ax2 coordinate system, a gp_Ax3 can be right-handed ("direct sense") or left-handed ("indirect sense"). A coordinate system is defined by:

- its origin (also referred to as its "Location point"), and
- three orthogonal unit vectors, termed the "X Direction", the "Y Direction" and the "Direction" (also referred to as the "main Direction"). The "Direction" of the coordinate system is called its "main Direction" because whenever this unit vector is modified, the "X Direction" and the "Y Direction" are recomputed. However, when we modify either the "X Direction" or the "Y Direction", "Direction" is not modified. "Direction" is also the "Z Direction". The "main Direction" is always parallel to the cross product of its "X Direction" and "Y Direction". If the coordinate system is right-handed, it satisfies the equation: "main Direction" = "X Direction" ^ "Y Direction" and if it is left-handed, it satisfies the equation: "main Direction" = -"X Direction" ^ "Y Direction" 

A coordinate system is used:
- to describe geometric entities, in particular to position them. The local coordinate system of a geometric entity serves the same purpose as the STEP function "axis placement three axes", or
- to define geometric transformations. Note:
- We refer to the "X Axis", "Y Axis" and "Z Axis", respectively, as the axes having:
- the origin of the coordinate system as their origin, and
- the unit vectors "X Direction", "Y Direction" and "main Direction", respectively, as their unit vectors.
- The "Z Axis" is also the "main Axis".
- gp_Ax2 is used to define a coordinate system that must be always right-handed.

