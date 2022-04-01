
## What it is 

Ament package providing the ALWAYS_DO macro.

This macro can be used to bypass cmake cache in other macros.

For example, in a file CMakeLists.txt:

```cmake
macro (A)
      message(INFO "A")
endmacro()

A()
```

When cmake is called, the macro ```A``` may or may not be called depending on the status of the cache and of the status of the source package.

But:

```cmake
macro (A)
      message(INFO "A")
      ALWAYS_DO("running A")
endmacro()

A()
```

will always be called.


## Usage

- Clone cmake_always_do in your ament workspace
- In the package with the macro to update:
    - add ```<buildtool_depend>cmake_always_do</buildtool_depend>```
    - add ```find_package(cmake_always_do REQUIRED)``` in the CMakeLists.txt file
    - call ALWAYS_DO in the macro

