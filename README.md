# invalid-monoid

Invalid Monoid example from the book "Haskell Programming From First Principles", by Allen & Moronuki (page 609).

The code compiles with stack resolver lts-10.7, and the monoidal properties are tested as invalid by QuickCheck.

However, with lts-12.7, the code fails to compile altogether.

This is the error generated:
```
Building all executables for `invalid-monoid' once. After a successful build of all of them, only specified executables will be rebuilt.
invalid-monoid-0.1.0.0: configure (lib + exe)
Configuring invalid-monoid-0.1.0.0...
invalid-monoid-0.1.0.0: build (lib + exe)
Preprocessing library for invalid-monoid-0.1.0.0..
Building library for invalid-monoid-0.1.0.0..
[1 of 2] Compiling Lib              ( src\Lib.hs, .stack-work\dist\7d103d30\build\Lib.o )

src\Lib.hs:8:14:
    * No instance for (Semigroup Bull)
        arising from the superclasses of an instance declaration
    * In the instance declaration for `Monoid Bull'
    |
    |     instance Monoid Bull where
    |              ^^^^^^^^^^^


--  While building custom Setup.hs for package invalid-monoid-0.1.0.0 using:
      C:\sr\setup-exe-cache\x86_64-windows\Cabal-simple_Z6RU0evB_2.2.0.1_ghc-8.4.3.exe --builddir=.stack-work\dist\7d103d30 build lib:invalid-monoid exe:invalid-monoid-exe --ghc-options " -ddump-hi -ddump-to-file -fdiagnostics-color=always"
    Process exited with code: ExitFailure 1
```