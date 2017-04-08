# COM2D
Autonomous COM Wrapper In The D Language

Theory: 

1. Use D source code interfaces generated from ild2d to specify the functions that the dynamic COM interfaces use. This provides the com function name, parameters, and return type.
2. Generate at compile time, the classes that correspond to the COM interfaces. Each function in the interface is converted to an equivalent delegate in the class.
3. Generate at compile time, function implementations that do all the necessary COM conversion and calling work(Marshalling and invoking) and assign them to their corresponding delegates.

By using the compiler to generate the wrappers and plumping, very little code is required by the user to interface with COM instances. Essentially D wrappers allow for D "like" usage without the headache of COM interop. Most of the functionality can be automatically generated. Since all hard work is done at compile time, it is very efficient code which can also be used directly after generation to avoid the generation overhead(use pragma or write the mixins to file if necessary to speed up compilation times).

Interfaces that are returned by methods are COM interfaces and must go through the same process as CoCreateInstance, GetIDNames, Invoke, Etc that is used for the main application/CLSID interfaces except QueryInterface is used instead of CoCreateInstance on the COM interface value returned by these methods.



