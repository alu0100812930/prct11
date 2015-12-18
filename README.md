Lenguajes y Paradigmas de Programación
==================


Práctica 11 - Lenguaje de dominio específico (DSL)
------------

Autor:

* Mauricio Orta

Descripción
----------------------

Este repositorio contiene un árbol de directorios y ficheros creados con la herramienta Bundler, la cual organiza la estructura necesaria para 
poder obtener una "gema" o librería de ruby.

Se incluyen cuatro ficheros en lib/dsl. El primero es references.rb, el cual consta de una clase padre Biblioref que representa a referencias bibliográficas
y clases hijas Book, Magazine, Newspaper y EDoc que la heredan, las cuales representan referencias de libros, artículos de revista, artículos de periódico y documentos
electrónicos respectivamente. Esta jerarquía de clases está modificada de tal manera que sus instancias comparables a través de la integración con el módulo "Comparable"

El segundo fichero de clase es doubly_list, el contiene la clase DList, la cual como sugiere el nombre de su fichero posee el comportamiento de
una lista doblemente enlazada, con un enlace al nodo anterior además del siguiente para cada nodo de la lista. Esta clase está modificada de tal 
manera que sus instancias son enumerables a través de la integración con el módulo "Enumerable".

El tercer fichero de clase es ref_list.rb, el cual contiene una clase hija RList de la clase padre DList de doubly_list, la cual sirve para representar
listas de citas y referencias bibliográficas en el formato de la Asociación Estadounidense de Psicología (siglas APA en Inglés).

Eñ cuarto fichero r_dsl.rb contiene el código de métodos para definir el DSL interno que declara objetos de referencias bibliográficas y listas
de referencias.

Finalmente, existe un fichero de expectativas functional_spec.rb en el directorio spec, el cual contiene grupos de ejemplos de expectativas
que se fueron escribiendo a medida que se desarrollaba el código para verificar y evaluar su funcionamiento. También se instaló y se configuró en el
proyecto herramienta de cobertura de código coveralls con su respectivo fichero .coveralls.yml.

Árbol de ficheros y directorios
-------------------------------
``` 
.
├── CODE_OF_CONDUCT.md
├── Gemfile
├── Gemfile.lock
├── LICENSE.txt
├── README.md
├── Rakefile
├── bin
│   ├── console
│   └── setup
├── coverage
├── dsl.gemspec
├── lib
│   ├── dsl
│   │   ├── doubly_list.rb
│   │   ├── r_dsl.rb
│   │   ├── ref_list.rb
│   │   ├── references.rb
│   │   └── version.rb
│   └── dsl.rb
└── spec
    ├── dsl_spec.rb
    └── spec_helper.rb

``` 
    
---------------------------
