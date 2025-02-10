# Milan Skocic - Electrochemist
	
* [milan.skocic\@icloud.com](mailto://milan.skocic@icloud.com)
* +33(0)6 66 18 69
* [github.com/MilanSkocic](https://www.github.com/MilanSkocic)
* [ORCID: 0000-0003-2189-5766](https://www.orcid.org/0000-0003-2189-5766)
* 2500C Route de Saint Sernin, 71200 Saint Sernin du Bois

Download the PDF versions: [EN](./cv/bin/cv-milan_skocic-en.pdf) [FR](./cv/bin/cv-milan_skocic-fr.pdf) [SRB](./cv/bin/cv-milan_skocic-sr.pdf)

# About me

I am an electrochemist in nuclear industry since 2012. My experience with programming started with Python which I still use on a daily basis for data processing and plotting. 
I quickly started to be interested in writing C extensions for Python because I needed to get rid of bottle necks for nested loops in my algorithms. 

C is a very powerfull compiled language which provides a lot of low level control. However, C is not designed for simply expressing mathematical formulas where simple operations are cumbersome to implement (from my point of view).

I rediscovered Fortran with an 30+ year old code written in Fortran 77 that needed to be recompiled on a newer OS. Naturely, I started to learn the new standards for Fortran (> f90) and all the great features that come with for mathematical formulas especially the matrix operations included by default in the Fortran language. 

By rewriting some portions of the code with Modern Fortran, I saw that Modern Fortran features the best of Python and C i.e. simpicity for maths and execution speed. It became my favorite language for developing code for my daily use. The iso_c_binding feature allows to naturally expose Fortran routines to C code and therefore to plug them in a Python C extension.
