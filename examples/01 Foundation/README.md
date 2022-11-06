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



# Collections
[Collections, Strings, Quantities and Unit Conversion](https://dev.opencascade.org/doc/overview/html/occt_user_guides__foundation_classes.html#occt_fcug_3)

Collections are the classes that handle dynamically sized aggregates of data. Collection classes are generic and rely on C++ templates.

Collections include a wide range of generic classes such as run-time sized arrays, lists, stacks, queues, sets and hash maps. Collections are implemented in the TCollection and NCollection packages.

# Math
[Math Primitives and Algorithms](https://dev.opencascade.org/doc/overview/html/occt_user_guides__foundation_classes.html#occt_occt_fcug_4)
